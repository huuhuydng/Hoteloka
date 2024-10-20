package dal;

import context.DBContext;
import dto.BookingDTO;
import dto.HotelDTO;
import dto.RoomDTO;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import model.Booking;
import model.BookingsDetail;
import model.Hotel;
import model.Payment;
import model.Room;
import model.Services;
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

    public User getUser(String acc_email) {
        String sql = "SELECT * FROM Account\n"
                + "WHERE acc_email = ?";
        try {
            User us = new User();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, acc_email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                us.setAcc_id(rs.getString(1));
                us.setAcc_email(rs.getString(2));
                us.setAcc_password(rs.getString(3));
                us.setAcc_fullname(rs.getString(4));
                us.setAcc_dob(rs.getString(5));
                us.setAcc_gender(rs.getString(6));
                us.setAcc_phone(rs.getString(7));
                us.setAcc_type(rs.getString(8));
            }
            return us;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public User getUserByID(String acc_id) {
        String sql = "SELECT * FROM Account\n"
                + "WHERE acc_id = ?";
        try {
            User us = new User();
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, acc_id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                us.setAcc_id(rs.getString(1));
                us.setAcc_email(rs.getString(2));
                us.setAcc_password(rs.getString(3));
                us.setAcc_fullname(rs.getString(4));
                us.setAcc_dob(rs.getString(5));
                us.setAcc_gender(rs.getString(6));
                us.setAcc_phone(rs.getString(7));
                us.setAcc_type(rs.getString(8));
            }
            return us;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
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

    public int countBooking() {
        String sql = "SELECT COUNT(*)\n"
                + "FROM Bookings\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
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

    public boolean deleteHotelU(String hotelId) {
        String sql = "DELETE FROM Hotel WHERE hotel_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelId);
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteRoomU(String roomId) {
        String sql = "DELETE FROM Room WHERE room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, roomId);
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public void addBooking(Booking booking) {
        String sql = "INSERT INTO Bookings (booking_id, acc_id, hotel_id, booking_date, booking_checkIn, "
                + "booking_checkOut, booking_quantity, booking_total, booking_status, booking_notes) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, booking.getBooking_id());
            st.setString(2, booking.getAcc_id());
            st.setString(3, booking.getHotel_id());

            // Convert Java Date to SQL Date for database
            st.setDate(4, new java.sql.Date(booking.getBooking_date().getTime()));
            st.setDate(5, new java.sql.Date(booking.getBooking_checkIn().getTime()));
            st.setDate(6, new java.sql.Date(booking.getBooking_checkOut().getTime()));

            st.setString(7, booking.getBooking_quantity());
            st.setString(8, booking.getBooking_total());
            st.setString(9, booking.getBookingStatus());
            st.setString(10, booking.getBookingDetails());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error adding booking: " + e.getMessage());
        }
    }

    public void addBookingDetail(BookingsDetail detail) {
        String sql = "INSERT INTO BookingDetail (booking_id, room_id, quantity) VALUES (?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, detail.getBooking_id());
            st.setString(2, detail.getRoomId());
            st.setString(3, detail.getQuantity());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error adding booking detail: " + e.getMessage());
        }
    }

    public void deleteBooking(String bookingId) {
        String sqlGetDetails = "SELECT room_id, quantity FROM BookingDetail WHERE booking_id = ?";
        try {
            PreparedStatement stGetDetails = connection.prepareStatement(sqlGetDetails);
            stGetDetails.setString(1, bookingId);
            ResultSet rs = stGetDetails.executeQuery();

            while (rs.next()) {
                String roomId = rs.getString("room_id");
                String quantity = rs.getString("quantity");
                restoreNumRoom(roomId, quantity);
            }
        } catch (SQLException e) {
            System.out.println("Error retrieving booking details: " + e.getMessage());
        }

        String sqlDetail = "DELETE FROM BookingDetail WHERE booking_id = ?";
        try {
            PreparedStatement stDetail = connection.prepareStatement(sqlDetail);
            stDetail.setString(1, bookingId);
            stDetail.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error deleting booking details: " + e.getMessage());
        }

        String sqlBooking = "DELETE FROM Bookings WHERE booking_id = ?";
        try {
            PreparedStatement stBooking = connection.prepareStatement(sqlBooking);
            stBooking.setString(1, bookingId);
            stBooking.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error deleting booking: " + e.getMessage());
        }
    }

    public void deleteHotel(String hotelId) {
        String sqlDetail = "DELETE FROM Hotel WHERE hotel_id = ?";
        try {
            PreparedStatement stDetail = connection.prepareStatement(sqlDetail);
            stDetail.setString(1, hotelId);
            stDetail.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error deleting booking details: " + e.getMessage());
        }

        String sqlBooking = "DELETE FROM Room WHERE hotel_id = ?";
        try {
            PreparedStatement stBooking = connection.prepareStatement(sqlBooking);
            stBooking.setString(1, hotelId);
            stBooking.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error deleting booking: " + e.getMessage());
        }
    }

    public boolean updateRoom(String roomId, String roomName, String roomPrice, String roomImg, String numPeople, String numRoom) {
        String sql = "UPDATE [dbo].[Room] "
                + "SET room_name = ?, room_price = ?, room_img = ?, "
                + "numPeople = ?, numRoom = ? "
                + "WHERE room_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, roomName);
            st.setString(2, roomPrice);
            st.setString(3, roomImg);
            st.setString(4, numPeople);
            st.setString(5, numRoom);
            st.setString(6, roomId);

            int rowsUpdated = st.executeUpdate();
            System.out.println("Rows updated: " + rowsUpdated); // In ra số hàng đã được cập nhật
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void restoreNumRoom(String roomId, String numRoom) {
        String sql = "UPDATE Room\n"
                + "SET numRoom = CAST(numRoom AS INT) + CAST(? AS INT)\n"
                + "WHERE room_id = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, numRoom);
            st.setString(2, roomId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error restoring numRoom: " + e.getMessage());
        }
    }

    public boolean updateHotel(String hotelId, String accId, String hotelName, String hotelNumRoom,
            String hotelImagesGeneral, String hotelImagesDetail, String typeId,
            String hotelPolicy, String hotelStar, String hotelDesc,
            String hotelStreet, String hotelWard, String hotelDistrict, String hotelCity) {

        String sql = "UPDATE Hotel SET hotel_name = ?, hotel_numRoom = ?, hotel_imagesGeneral = ?, hotel_imagesDetail = ?, "
                + "type_id = ?, hotel_policy = ?, hotel_star = ?, hotel_desc = ?, hotel_street = ?, hotel_ward = ?, "
                + "hotel_district = ?, hotel_city = ? WHERE hotel_id = ? AND acc_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelName);
            st.setString(2, hotelNumRoom);
            st.setString(3, hotelImagesGeneral);
            st.setString(4, hotelImagesDetail);
            st.setString(5, typeId);
            st.setString(6, hotelPolicy);
            st.setString(7, hotelStar);
            st.setString(8, hotelDesc);
            st.setString(9, hotelStreet);
            st.setString(10, hotelWard);
            st.setString(11, hotelDistrict);
            st.setString(12, hotelCity);
            st.setString(13, hotelId);
            st.setString(14, accId);

            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void updateNumRoom(String roomId, String numRoom) {
        String sql = "UPDATE Room\n"
                + "SET numRoom = CAST(numRoom AS INT) - CAST(? AS INT)\n"
                + "WHERE room_id = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(2, numRoom);
            st.setString(1, roomId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error updateNumRoom: " + e.getMessage());
        }
    }

    public void addPayment(Payment payment) {
        String sql = "INSERT INTO Payment (payment_id, booking_id, amount, method, payDate) "
                + "VALUES (?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, payment.getPaymentid());
            st.setString(2, payment.getBooking_id());
            st.setString(3, payment.getAmount());
            st.setString(4, payment.getMethod());

            // Convert Java Date to SQL Date for database
            st.setDate(5, new java.sql.Date(payment.getPayDate().getTime()));

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error adding payment: " + e.getMessage());
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

    public boolean addNewRoom(String hotel_id, String room_name, String room_price,
            String room_img, String numPeople, String numRoom) {
        String sql = "INSERT INTO Room (room_id, hotel_id, room_name, room_price, room_img, numPeople, numRoom) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {
            // Step 1: Get the maximum room_id from the database
            String getMaxIdSQL = "SELECT MAX(room_id) AS max_id FROM Room";
            PreparedStatement getMaxIdStmt = connection.prepareStatement(getMaxIdSQL);
            ResultSet rs = getMaxIdStmt.executeQuery();

            // Step 2: Extract the numeric part of the last room_id and increment it
            int newIdNumber = 1;
            if (rs.next() && rs.getString("max_id") != null) {
                String lastId = rs.getString("max_id");
                newIdNumber = Integer.parseInt(lastId.substring(1)) + 1;  // Remove 'R' and parse the number
            }

            // Step 3: Format the new room_id as 'Rxxx'
            String newRoomId = String.format("R%03d", newIdNumber);

            // Step 4: Prepare the statement to insert the new room
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newRoomId); // Generated room_id
            st.setString(2, hotel_id);
            st.setString(3, room_name);
            st.setString(4, room_price);
            st.setString(5, room_img);
            st.setString(6, numPeople);
            st.setString(7, numRoom);

            // Step 5: Execute the insert query
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0; // Return true if the insertion was successful

        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
            return false;
        }
    }

    public Hotel HotelById(String id) {
        String sql = "SELECT hotel_id, hotel_name, hotel_imagesGeneral, hotel_star, hotel_city, hotel_district, hotel_ward, hotel_street \n"
                + "FROM Hotel \n"
                + "WHERE hotel_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
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
                return hotel;
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error in getAllHotels: " + e.getMessage());
        }
        return null;
    }

    public Room getRoomsByID(String roomId) {
        String sql = "SELECT * FROM Room \n"
                + "where room_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, roomId);
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
                return room;
            }
            rs.close();
            connection.close();
        } catch (SQLException e) {
            System.out.println("e");
        }
        return null;
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

    public HotelDTO getHotelByUser(String id) {
        String sql = "SELECT hotel_id, hotel_name, hotel_imagesGeneral, hotel_star, hotel_city, hotel_district, hotel_ward, hotel_street, hotel_imagesDetail, hotel_numRoom, hotel_desc, hotel_policy, HT.type_name \n"
                + "FROM Hotel H  left join HotelType HT on H.type_id = HT.type_id "
                + "where H.acc_id =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                System.out.println("Mapping hotel: " + rs.getString("hotel_id"));
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

    public boolean saveGoogleAccount(String email, String password, String fullname, String dob, String gender, String phone) {
        try {
            String getMaxIdSQL = "SELECT MAX(acc_id) AS max_id FROM [dbo].[Account]";
            PreparedStatement getMaxIdStmt = connection.prepareStatement(getMaxIdSQL);
            ResultSet rs = getMaxIdStmt.executeQuery();

            int newIdNumber = 1;
            if (rs.next() && rs.getString("max_id") != null) {
                String lastId = rs.getString("max_id");
                newIdNumber = Integer.parseInt(lastId.substring(3)) + 1; // Tăng giá trị id
            }

            String newAccId = String.format("ACC%03d", newIdNumber);

            String sql = "INSERT INTO [dbo].[Account] (acc_id, acc_email, acc_password, acc_fullname, acc_dob, acc_gender, acc_phone, acc_type) VALUES (?, ?, ?, ?, ?, ?, ?, 2)";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newAccId);
            st.setString(2, email);
            st.setString(3, password);
            st.setString(4, fullname);
            st.setString(5, dob);
            st.setString(6, gender);
            st.setString(7, phone);

            int rowsAffected = st.executeUpdate();
            System.out.println("Rows affected: " + rowsAffected);
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<BookingDTO> getFilteredBookings(String month, String year) {
        List<BookingDTO> bookings = new ArrayList<>();

        // SQL query cơ bản với điều kiện WHERE động dựa vào tháng và năm
        StringBuilder sql = new StringBuilder("SELECT B.*, H.hotel_name FROM Bookings B ")
                .append("LEFT JOIN Hotel H ON B.hotel_id = H.hotel_id WHERE 1=1");

        // Thêm điều kiện lọc tháng nếu có
        if (month != null && !month.isEmpty()) {
            sql.append(" AND MONTH(B.check_in_date) = ?");
        }

        // Thêm điều kiện lọc năm nếu có
        if (year != null && !year.isEmpty()) {
            sql.append(" AND YEAR(B.check_in_date) = ?");
        }

        // Sắp xếp kết quả theo booking_id
        sql.append(" ORDER BY B.booking_id DESC");

        try {
            PreparedStatement st = connection.prepareStatement(sql.toString());

            int paramIndex = 1;

            // Thiết lập giá trị cho tháng nếu có
            if (month != null && !month.isEmpty()) {
                st.setInt(paramIndex++, Integer.parseInt(month));
            }

            // Thiết lập giá trị cho năm nếu có
            if (year != null && !year.isEmpty()) {
                st.setInt(paramIndex++, Integer.parseInt(year));
            }

            // Thực thi truy vấn
            ResultSet rs = st.executeQuery();

            // Lặp qua kết quả và ánh xạ đối tượng BookingDTO
            while (rs.next()) {
                // In ra thông tin để kiểm tra quá trình ánh xạ
                System.out.println("Mapping booking: " + rs.getString("booking_id"));
                bookings.add(mapBookingDTOFromResultSet(rs));
            }

        } catch (SQLException e) {
            System.out.println("Error in getFilteredBookings: " + e.getMessage());
        }

        return bookings;
    }

    public List<Booking> getBookingsByUser(String accId, int index) {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM Bookings WHERE acc_id = ? "
                + "ORDER BY booking_date DESC "
                + "OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, accId);
            st.setInt(2, (index - 1) * 10);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                bookings.add(mapBookingFromResultSet(rs));
            }
        } catch (SQLException e) {
            System.out.println("Error in getBookingsByUser: " + e.getMessage());
        }
        return bookings;
    }

    public List<BookingDTO> getBookingsByHotel(String hotelId) {
        List<BookingDTO> bookings = new ArrayList<>();
        String sql = "SELECT B.*, H.hotel_name FROM Bookings B "
                + "LEFT JOIN Hotel H ON B.hotel_id = H.hotel_id WHERE B.hotel_id = ? "
                + "ORDER BY B.booking_id DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                // In ra các thông tin để kiểm tra
                System.out.println("Mapping booking: " + rs.getString("booking_id"));
                bookings.add(mapBookingDTOFromResultSet(rs));
            }
        } catch (SQLException e) {
            System.out.println("Error in getBookingsByHotel: " + e.getMessage());
        }
        return bookings;
    }

    public double getTotalMoneyByYearAndMonth(int year, int month) {
        String sql = "SELECT SUM(CAST(booking_total AS INT)) AS total_booking_amount "
                + "FROM Bookings "
                + "WHERE YEAR(booking_checkin) = ? "
                + "AND MONTH(booking_checkin) = ? "
                + "AND booking_status IN ('accept', 'finish')"; // Thêm điều kiện kiểm tra booking_status
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, year);
            st.setInt(2, month);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getDouble(1);
            }
        } catch (Exception e) {
            e.printStackTrace(); // It's a good practice to log exceptions
        }
        return 0;
    }

    // Get bookings by user ID and status with pagination
    public List<Booking> getBookingsByUserAndStatus(String accId, String status, int index) {
        List<Booking> bookings = new ArrayList<>();
        String sql = "SELECT * FROM Bookings WHERE acc_id = ? AND booking_status = ? "
                + "ORDER BY booking_date DESC "
                + "OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, accId);
            st.setString(2, status);
            st.setInt(3, (index - 1) * 10);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                bookings.add(mapBookingFromResultSet(rs));
            }
        } catch (SQLException e) {
            System.out.println("Error in getBookingsByUserAndStatus: " + e.getMessage());
        }
        return bookings;
    }

    // Count total bookings for a user
    public int countBookingsByUser(String accId) {
        String sql = "SELECT COUNT(*) FROM Bookings WHERE acc_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, accId);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Error in countBookingsByUser: " + e.getMessage());
        }
        return 0;
    }

    // Count bookings by status for a user
    public int countBookingsByUserAndStatus(String accId, String status) {
        String sql = "SELECT COUNT(*) FROM Bookings WHERE acc_id = ? AND booking_status = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, accId);
            st.setString(2, status);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println("Error in countBookingsByUserAndStatus: " + e.getMessage());
        }
        return 0;
    }

    // Update booking status
    public boolean updateBookingStatus(String bookingId, String newStatus) {
        String sql = "UPDATE Bookings SET booking_status = ? WHERE booking_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, newStatus);
            st.setString(2, bookingId);

            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error in updateBookingStatus: " + e.getMessage());
        }
        return false;
    }

    //update
    public boolean updateRole(String accID, String role) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "SET [acc_type] = ?\n"
                + "WHERE [acc_id] = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, role);
            st.setString(2, accID);
            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error in updateBookingStatus: " + e.getMessage());
        }
        return false;
    }

    //update
    public boolean updateStatus(String booking_id, String booking_status) {
        String sql = "UPDATE [dbo].[Bookings]\n"
                + "SET booking_status = ?\n"
                + "WHERE booking_id = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, booking_status);
            st.setString(2, booking_id);

            int rowsAffected = st.executeUpdate();
            return rowsAffected > 0;
        } catch (SQLException e) {
            System.out.println("Error in updateBookingStatus: " + e.getMessage());
        }
        return false;
    }

    // Helper method to map ResultSet to Booking object
    private Booking mapBookingFromResultSet(ResultSet rs) throws SQLException {
        return new Booking(
                rs.getString("booking_id"),
                rs.getString("acc_id"),
                rs.getString("hotel_id"),
                rs.getDate("booking_date"),
                rs.getDate("booking_checkIn"),
                rs.getDate("booking_checkOut"),
                rs.getString("booking_quantity"),
                rs.getString("booking_total"),
                rs.getString("booking_status"),
                rs.getString("booking_notes")
        );
    }

    private BookingDTO mapBookingDTOFromResultSet(ResultSet rs) throws SQLException {
        return new BookingDTO(
                rs.getString("hotel_name"),
                rs.getString("booking_id"),
                rs.getString("acc_id"),
                rs.getString("hotel_id"),
                rs.getDate("booking_date"),
                rs.getDate("booking_checkIn"),
                rs.getDate("booking_checkOut"),
                rs.getString("booking_quantity"),
                rs.getString("booking_total"),
                rs.getString("booking_status"),
                rs.getString("booking_notes")
        );
    }

    public List<BookingDTO> getBookingsByUser(String accId) {
        List<BookingDTO> bookings = new ArrayList<>();
        String sql = "select B.*, H.hotel_name from Bookings B\n"
                + "left join Hotel H on B.hotel_id = H.hotel_id WHERE B.acc_id = ? "
                + "ORDER BY B.booking_id DESC ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, accId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                bookings.add(mapBookingDTOFromResultSet(rs));
            }
        } catch (SQLException e) {
            System.out.println("Error in getBookingsByUser: " + e.getMessage());
        }
        return bookings;
    }

    public String roomLeft(String roomId, Date checkIn, Date checkOut) {
        int totalRoom = 0;
        int totalRoomQuantity = 0;
        String roomSql = "SELECT numRoom FROM Room WHERE room_id = ?";
        String bookingSql = "SELECT COALESCE(SUM(CAST(bd.quantity AS INT)), 0) AS total_booked\n"
                + "FROM BookingDetail bd\n"
                + "JOIN Bookings b ON bd.booking_id = b.booking_id\n"
                + "WHERE bd.room_id = ?\n"
                + "  AND (\n"
                + "      (b.booking_checkin <= ? AND b.booking_checkout > ?) OR \n"
                + "      (b.booking_checkin < ? AND b.booking_checkout >= ?) OR  \n"
                + "      (b.booking_checkin >= ? AND b.booking_checkout <= ?)\n"
                + "  );";

        try (PreparedStatement roomSt = connection.prepareStatement(roomSql); PreparedStatement bookingSt = connection.prepareStatement(bookingSql)) {
            roomSt.setString(1, roomId);
            try (ResultSet roomRs = roomSt.executeQuery()) {
                if (roomRs.next()) {
                    totalRoom = roomRs.getInt("NumRoom");
                }
            }

            java.sql.Date sqlCheckIn = new java.sql.Date(checkIn.getTime());
            java.sql.Date sqlCheckOut = new java.sql.Date(checkOut.getTime());

            bookingSt.setString(1, roomId);
            bookingSt.setDate(2, sqlCheckIn);
            bookingSt.setDate(3, sqlCheckIn);
            bookingSt.setDate(4, sqlCheckOut);
            bookingSt.setDate(5, sqlCheckOut);
            bookingSt.setDate(6, sqlCheckIn);
            bookingSt.setDate(7, sqlCheckOut);
            try (ResultSet bookingRs = bookingSt.executeQuery()) {
                if (bookingRs.next()) {
                    totalRoomQuantity = bookingRs.getInt("total_booked");
                }
            }
        } catch (SQLException e) {
            System.out.println("Error in roomLeft: " + e.getMessage());
        }
        int roomLeft = Math.max(0, totalRoom - totalRoomQuantity);
        return String.valueOf(roomLeft);
    }

    private RoomDTO mapRoomDTOFromResultSet(ResultSet rs) throws SQLException {
        return new RoomDTO(
                rs.getString("quantity"),
                rs.getString("room_id"),
                rs.getString("hotel_id"),
                rs.getString("room_name"),
                rs.getString("room_price"),
                rs.getString("room_img"),
                rs.getString("numPeople"),
                rs.getString("numRoom")
        );
    }

    public List<RoomDTO> getBookingsDetailByBooking(String bookingId) {
        List<RoomDTO> roomDTOs = new ArrayList<>();
        String sql = "select R.*, BD.quantity from Bookings B\n"
                + "left join BookingDetail BD on B.booking_id = BD.booking_id\n"
                + "left join Room R on BD.room_id = R.room_id\n"
                + "where B.booking_id = ? "
                + "ORDER BY R.room_id ASC ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, bookingId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                roomDTOs.add(mapRoomDTOFromResultSet(rs));
            }
        } catch (SQLException e) {
            System.out.println("Error in getBookingsByUser: " + e.getMessage());
        }
        return roomDTOs;
    }

    public List<Services> getService(String hotelId) {
        List<Services> listServices = new ArrayList<>();
        String sql = "SELECT sd.service_id,sd.service_name\n"
                + "FROM Services s\n"
                + "JOIN ServicesDetail sd ON s.service_id = sd.service_id\n"
                + "WHERE s.hotel_id = ?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, hotelId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String sv_id = rs.getString(1);
                String sv_name = rs.getString(2);
                listServices.add(new Services(sv_id, sv_name));
            }
        } catch (SQLException e) {
            System.out.println("Error in getBookingsByUser: " + e.getMessage());
        }
        return listServices;
    }

    public List<Services> getallService() {
        List<Services> listServices = new ArrayList<>();
        String sql = "SELECT * from ServicesDetail";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String sv_id = rs.getString(1);
                String sv_name = rs.getString(2);
                listServices.add(new Services(sv_id, sv_name));
            }
        } catch (SQLException e) {
            System.out.println("Error in getBookingsByUser: " + e.getMessage());
        }
        return listServices;
    }

    public void addServiceForHotel(String hotelId, List<String> serviceId) {
        String sql = "INSERT [dbo].[Services] ([hotel_id], [service_id]) VALUES (?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            for (String serviceIds : serviceId) {
                st.setString(1, hotelId);
                st.setString(2, serviceIds);
                st.addBatch();
            }
            st.executeBatch();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public void updateServiceForHotel(String hotelId, List<String> serviceId) {
        String sql = "UPDATE [dbo].[Services] SET service_id = ? "
                + "WHERE hotel_id = ? AND service_id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            for (String serviceIds : serviceId) {
                st.setString(1, hotelId);
                st.setString(2, serviceIds);
                st.addBatch();
            }
            st.executeBatch();
            connection.close();
        } catch (SQLException e) {
            System.out.println("Error: " + e.getMessage());
        }
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
//        System.out.println(dao.countBooking());
//        dao.updateNumRoom("2", "R953");
//        dao.addRoom("R948", "HT201", "Test", "200.000", "test", "3", "2");
//        List<Services> bookingList = dao.getallService();
//        System.out.println(bookingList);
//        hotelList = dao.searchHotels(1, "Hải Châu");
//        for (Hotel hotel : hotelList) {
//            System.out.println(hotel.hotelList());
//        }
//        System.out.println(dao.count("gold"));
//        try {
//            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//            Date checkIn = new Date(sdf.parse("21/10/2024").getTime());
//            Date checkOut = new Date(sdf.parse("22/10/2024").getTime());
//
//            System.out.println(dao.roomLeft("R012", checkIn, checkOut));
//            System.out.println(dao.getRoomsByID("R012").toString());
//        } catch (Exception e) {
//            System.out.println("Lỗi: " + e.getMessage());
//        }
        dao.getBookingsByHotel("HT004");
        dao.getHotelByUser("ACC004");
        boolean isupdate = dao.updateBookingStatus("B006", "accept");
        System.out.println(isupdate);

//        dao.deleteHotel("HT199");
//        dao.updateRole("ACC199", "2");
    }

}
