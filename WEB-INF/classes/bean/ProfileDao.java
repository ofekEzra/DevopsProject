package bean;
import java.sql.*;

public class ProfileDao {

    public static boolean addProfile(ProfileBean bean){
        boolean status = false;
        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("insert into profiles (name, email, bio) values (?, ?, ?)");
            ps.setString(1, bean.getName());
            ps.setString(2, bean.getEmail());
            ps.setString(3, bean.getBio());

            int result = ps.executeUpdate();
            status = (result > 0);
        } catch(Exception e) {
            e.printStackTrace();
        }
        return status;
    }
}
