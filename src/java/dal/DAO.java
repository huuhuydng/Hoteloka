
package dal;

import context.DBContext;
import dto.HotelDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import model.Hotel;
import model.Room;
import model.User;


public class DAO extends DBContext {

    // Method to check login credentials
    public User check(String email, String password) {
        String sql = "SELECT acc_id, acc_email, acc_password, acc_fullname, acc_dob, acc_gender, acc_phone, acc_type "
                + "FROM [dbo].[Account] "
                + "WHERE acc_email = ? AND acc_password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                // Tạo đối tượng User với đầy đủ thông tin từ kết quả truy vấn
                User user = new User(
                        rs.getString("acc_id"),
                        rs.getString("acc_email"),
                        rs.getString("acc_password"),
                        rs.getString("acc_fullname"),
                        rs.getString("acc_dob"),
                        rs.getString("acc_gender"),
                        rs.getString("acc_phone"),
                        rs.getString("acc_type")
                );
                return user;
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

    public boolean changePassword(String acc_id, String newPassword) {
        String sql = "UPDATE [dbo].[Account] SET acc_password = ? WHERE acc_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newPassword);
            st.setString(2, acc_id); // use acc_id for identification
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

            String getMaxIdSQL = "SELECT MAX(acc_id) AS max_id FROM [dbo].[Account]";
            PreparedStatement getMaxIdStmt = connection.prepareStatement(getMaxIdSQL);
            ResultSet rs = getMaxIdStmt.executeQuery();
            int newIdNumber = 1;
            if (rs.next() && rs.getString("max_id") != null) {
                String lastId = rs.getString("max_id");
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

    public boolean deleteUser(String userId) {
        String sql = "DELETE FROM [dbo].[Account] "
                + "WHERE acc_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userId);
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

    public boolean updateUser(String acc_id, String fullname, String gender, String dob, String phone) {
        String sql = "UPDATE [dbo].[Account] "
                + "SET acc_fullname = ?, acc_gender = ?, acc_dob = ?, acc_phone = ? "
                + "WHERE acc_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, fullname);
            st.setString(2, gender);
            st.setString(3, dob);
            st.setString(4, phone);
            st.setString(5, acc_id);
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
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
    
    public int getTotalRoom() {
        String sql = "Select count(*) from Room";
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

    //Search
    public List<Hotel> searchHotels(int index, String search) {
        List<Hotel> hotelList = new ArrayList<>();
        String sql = "WITH x AS (SELECT ROW_NUMBER() OVER (ORDER BY hotel_id) AS r, hotel_id, hotel_name, hotel_imagesGeneral, hotel_star,hotel_city, hotel_district, hotel_ward, hotel_street \n"
                + "FROM Hotel \n"
                + "WHERE hotel_name LIKE ? or hotel_city LIKE ? or hotel_district LIKE ? or hotel_ward LIKE ?\n"
                + ") \n"
                + "SELECT hotel_id, hotel_name, hotel_imagesGeneral, hotel_star, hotel_city, hotel_district, hotel_ward, hotel_street \n"
                + "FROM x \n"
                + "WHERE r BETWEEN ?*16-15 AND ?*16";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            // Thiết lập giá trị tham số tìm kiếm (search) cho điều kiện LIKE
            String searchPattern = "%" + search + "%";
            st.setString(1, searchPattern);
            st.setString(2, searchPattern);
            st.setString(3, searchPattern);
            st.setString(4, searchPattern);

            // Thiết lập giá trị phân trang
            st.setInt(5, index);
            st.setInt(6, index);
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
            System.out.println(e.getMessage());
        }
        return hotelList;
    }

    public int count(String search) {
        String sql = "SELECT COUNT(*)\n"
                + "FROM Hotel\n"
                + "WHERE hotel_name LIKE ? \n"
                + "   OR hotel_city LIKE ? \n"
                + "   OR hotel_district LIKE ? \n"
                + "   OR hotel_ward LIKE ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            String searchPattern = "%" + search + "%";
            st.setString(1, searchPattern);
            st.setString(2, searchPattern);
            st.setString(3, searchPattern);
            st.setString(4, searchPattern);

            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
            rs.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return 0;
    }

    public String getTypeId(String hotelType) {
        String sql = "select type_id from HotelType\n"
                + "WHERE type_name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelType);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getString(1);
            }
            rs.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return null;
    }
    public void addHotel(String hotelId, String accId, String hotelName, String hotelNumRoom,
            String hotelImagesGeneral, String hotelImagesDetail, String typeId,
            String hotelPolicy, String hotelStar, String hotelDesc,
            String hotelStreet, String hotelWard, String hotelDistrict, String hotelCity) {
        String sql = "INSERT INTO Hotel (hotel_id, acc_id, hotel_name, hotel_numRoom, hotel_imagesGeneral, hotel_imagesDetail, "
                + "type_id, hotel_policy, hotel_star, hotel_desc, hotel_street, hotel_ward, hotel_district, hotel_city) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelId);
            st.setString(2, accId);
            st.setString(3, hotelName);
            st.setString(4, hotelNumRoom);
            st.setString(5, hotelImagesGeneral);
            st.setString(6, hotelImagesDetail);
            st.setString(7, typeId);
            st.setString(8, hotelPolicy);
            st.setString(9, hotelStar);
            st.setString(10, hotelDesc);
            st.setString(11, hotelStreet);
            st.setString(12, hotelWard);
            st.setString(13, hotelDistrict);
            st.setString(14, hotelCity);
            st.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
    public void addRoom(String room_id, String hotel_id, String room_name, String room_price,
            String room_img, String numPeople, String numRoom) {
        String sql = "INSERT INTO Room (room_id, hotel_id, room_name, room_price, room_img, numPeople, numRoom)"
                + "VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, room_id);
            st.setString(2, hotel_id);
            st.setString(3, room_name);
            st.setString(4, room_price);
            st.setString(5, room_img);
            st.setString(6, numPeople);
            st.setString(7, numRoom);
            st.executeUpdate();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
    public HotelDTO getHotelById(String id) {
        String sql = "SELECT hotel_id, hotel_name, hotel_imagesGeneral, hotel_star, "
                + "hotel_city, hotel_district, hotel_ward, hotel_street, hotel_imagesDetail, hotel_numRoom, hotel_desc, hotel_policy, HT.type_name "
                + "FROM Hotel H  left join HotelType HT on H.type_id = HT.type_id where hotel_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                HotelDTO hotel = new HotelDTO();
                hotel.setHotel_id(rs.getString("hotel_id"));
                hotel.setHotel_name(rs.getString("hotel_name"));
                hotel.setHotel_imagesGeneral(rs.getString("hotel_imagesGeneral"));
                hotel.setHotel_star(rs.getString("hotel_star"));
                hotel.setHotel_city(rs.getString("hotel_city"));
                hotel.setHotel_district(rs.getString("hotel_district"));
                hotel.setHotel_ward(rs.getString("hotel_ward"));
                hotel.setHotel_street(rs.getString("hotel_street"));
                hotel.setHotel_numRoom(rs.getString("hotel_numRoom"));
                hotel.setHotel_desc(rs.getString("hotel_desc"));
                hotel.setHotel_policy(rs.getString("hotel_policy"));
                hotel.setType_name(rs.getString("type_name"));
                
                List<String> urlList = Arrays.asList(rs.getString("hotel_imagesDetail").split(","));
                hotel.setImagesDetail(urlList);
                
                List<Room> rooms = getRoomsByHotel(rs.getString("hotel_id"));
                hotel.setRooms(rooms);
                
                return hotel;
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error in getHotelById: " + e.getMessage());
        }
        return null;
    }
     
     public List<Room> getRoomsByHotel(String hotelId) {
        List<Room> rooms = new ArrayList<>();
        String sql = "SELECT * FROM Room \n"
                + "where hotel_id = ? ORDER BY room_id \n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Room room = new Room();
                room.setRoom_id(rs.getString("room_id"));
                room.setHotel_id(rs.getString("hotel_id"));
                room.setRoom_name(rs.getString("room_name"));
                room.setRoom_price(rs.getString("room_price"));
                room.setRoom_img(rs.getString("room_img"));
                room.setNumPeople(rs.getString("numPeople"));
                room.setNumRoom(rs.getString("numRoom"));
                rooms.add(room);
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("e");
        }
        return rooms;
    }


    public static void main(String[] args) {
        DAO dao = new DAO();
        System.out.println(dao.getTotalRoom());
//        dao.addRoom("R948", "HT201", "Test", "200.000", "test", "3", "2");
//        List<Hotel> hotelList = dao.getAllHotels();
//        hotelList = dao.searchHotels(1, "Hải Châu");
//        for (Hotel hotel : hotelList) {
//            System.out.println(hotel.hotelList());
//        }
//        System.out.println(dao.count("gold"));
//        System.out.println(dao.getTotalHotel());
    }

}
