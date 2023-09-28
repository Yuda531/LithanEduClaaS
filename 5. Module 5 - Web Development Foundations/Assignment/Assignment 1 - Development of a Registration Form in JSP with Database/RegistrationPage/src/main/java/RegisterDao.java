import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegisterDao {
	public int registerUser(UserBean userBean) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO user" +
            "  (user_email, user_name, location, user_password, date_register) VALUES " +
            " (?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/community_portal?useSSL=false&allowPublicKeyRetrieval=true", "root", "admin123");
            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) 
        {
        	preparedStatement.setString(1, userBean.getEmail());
	        preparedStatement.setString(2, userBean.getFullname());
	        preparedStatement.setString(3, userBean.getLocation());
	        preparedStatement.setString(4, userBean.getPassword());
	        preparedStatement.setDate(5, new java.sql.Date(new java.util.Date().getTime()));

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            e.printStackTrace();
        }
        return result;
    }
	
}