package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Hotel;
import model.User;

public class DAO extends DBContext {

    // Method to check login credentials
    public User check(String email, String password) {
        String sql = "SELECT [acc_email], [acc_password], [acc_type] "
                + "FROM [dbo].[Account] "
                + "WHERE acc_email = ? AND acc_password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                User a = new User(rs.getString("acc_email"),
                        rs.getString("acc_password"),
                        rs.getInt("acc_type"));
                return a;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public boolean updatePassword(String email, String newPassword) {
        String sql = "UPDATE [dbo].[Account] "
                + "SET acc_password = ? "
                + "WHERE acc_email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newPassword);
            st.setString(2, email);
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to register a new user
    // Method to register a new user
    public boolean register(String email, String password, String fullname, String dob, String gender, String phone) {
        try {
            // Lấy acc_id cuối cùng có dạng 'ACCxxx'
            String getMaxIdSQL = "SELECT MAX(acc_id) AS max_id FROM [dbo].[Account]";
            PreparedStatement getMaxIdStmt = connection.prepareStatement(getMaxIdSQL);
            ResultSet rs = getMaxIdStmt.executeQuery();
            int newIdNumber = 1; // Giá trị mặc định cho acc_id nếu bảng trống
            if (rs.next() && rs.getString("max_id") != null) {
                String lastId = rs.getString("max_id"); // Ví dụ: 'ACC012'
                // Lấy phần số từ 'ACCxxx' và chuyển thành số nguyên, sau đó tăng lên 1
                newIdNumber = Integer.parseInt(lastId.substring(3)) + 1;
            }

            // Định dạng acc_id mới theo dạng 'ACCxxx' (luôn có 3 chữ số)
            String newAccId = String.format("ACC%03d", newIdNumber);

            String insertSQL = "INSERT INTO [dbo].[Account] (acc_id, acc_email, acc_password, acc_fullname, acc_dob, acc_gender, acc_phone, acc_type) "
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, 2)";
            PreparedStatement st = connection.prepareStatement(insertSQL);
            st.setString(1, newAccId); // Đặt acc_id mới
            st.setString(2, email);
            st.setString(3, password);
            st.setString(4, fullname);
            st.setString(5, dob);
            st.setString(6, gender);
            st.setString(7, phone);
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    // Method to check if an email already exists
    public boolean isEmailExists(String email) {
        String sql = "SELECT 1 FROM [dbo].[Account] WHERE acc_email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            return rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    //hàm đếm số lượng hotel 
    public int getTotalHotel() {
        String sql = "Select count(*) from Hotel";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error in getAllHotels: " + e.getMessage());
        }
        return 0;

    }

    //hàm get show hotel
    public List<Hotel> getAllHotels() {
        List<Hotel> hotelList = new ArrayList<>();
        String sql = "SELECT hotel_id, hotel_name, hotel_imagesGeneral, hotel_star, "
                + "hotel_city, hotel_district, hotel_ward, hotel_street "
                + "FROM Hotel ORDER BY hotel_id DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Hotel hotel = new Hotel();
                hotel.setHotel_id(rs.getString("hotel_id"));
                hotel.setHotel_name(rs.getString("hotel_name"));
                hotel.setHotel_imagesGeneral(rs.getString("hotel_imagesGeneral"));
                hotel.setHotel_star(rs.getString("hotel_star"));
                hotel.setHotel_city(rs.getString("hotel_city"));
                hotel.setHotel_district(rs.getString("hotel_district"));
                hotel.setHotel_ward(rs.getString("hotel_ward"));
                hotel.setHotel_street(rs.getString("hotel_street"));
                hotelList.add(hotel);
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error in getAllHotels: " + e.getMessage());
        }
        return hotelList;
    }

    //dùng paging
    public List<Hotel> pagingHotels(int index) {
        List<Hotel> hotelList = new ArrayList<>();
        String sql = "SELECT hotel_id,hotel_name,hotel_imagesGeneral,hotel_star,hotel_city,hotel_district, hotel_ward, hotel_street FROM Hotel \n"
                + "ORDER BY hotel_id \n"
                + "OFFSET ? ROWS FETCH NEXT 16 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 16);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Hotel hotel = new Hotel();
                hotel.setHotel_id(rs.getString("hotel_id"));
                hotel.setHotel_name(rs.getString("hotel_name"));
                hotel.setHotel_imagesGeneral(rs.getString("hotel_imagesGeneral"));
                hotel.setHotel_star(rs.getString("hotel_star"));
                hotel.setHotel_city(rs.getString("hotel_city"));
                hotel.setHotel_district(rs.getString("hotel_district"));
                hotel.setHotel_ward(rs.getString("hotel_ward"));
                hotel.setHotel_street(rs.getString("hotel_street"));
                hotelList.add(hotel);
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("e");
        }
        return hotelList;
    }
    
    public List<Hotel> getRandomHotel() {
        List<Hotel> hotelList = new ArrayList<>();
        String sql = "SELECT hotel_id,hotel_name,hotel_imagesGeneral,hotel_star,hotel_city,hotel_district, hotel_ward, hotel_street FROM Hotel \n"
                + "ORDER BY hotel_id \n"
                + "OFFSET ? ROWS FETCH NEXT 8 ROWS ONLY";
        try {
            double randomDouble = Math.random();
            randomDouble = randomDouble * 181 + 1;
            int randomInt = (int) randomDouble;
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, randomInt);
            System.out.println(randomInt);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Hotel hotel = new Hotel();
                hotel.setHotel_id(rs.getString("hotel_id"));
                hotel.setHotel_name(rs.getString("hotel_name"));
                hotel.setHotel_imagesGeneral(rs.getString("hotel_imagesGeneral"));
                hotel.setHotel_star(rs.getString("hotel_star"));
                hotel.setHotel_city(rs.getString("hotel_city"));
                hotel.setHotel_district(rs.getString("hotel_district"));
                hotel.setHotel_ward(rs.getString("hotel_ward"));
                hotel.setHotel_street(rs.getString("hotel_street"));
                hotelList.add(hotel);
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("e");
        }
        return hotelList;
    }


    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Hotel> hotelList = new ArrayList<>();
        hotelList = dao.getRandomHotel();
            for (Hotel hotel : hotelList) {
                System.out.println(hotel.hotelList());
            }
//        System.out.println(dao.getTotalHotel());
    }

}
