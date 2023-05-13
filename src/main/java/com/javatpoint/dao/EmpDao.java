package com.javatpoint.dao;  
import java.sql.ResultSet;  
import java.sql.SQLException;  
import java.util.List;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;  
import org.springframework.jdbc.core.JdbcTemplate;  
import org.springframework.jdbc.core.RowMapper;  
import com.javatpoint.beans.Emp;  
  
public class EmpDao {  
JdbcTemplate template;  
  
public void setTemplate(JdbcTemplate template) {  
    this.template = template;  
}  
public int save(Emp p){  
    String sql="INSERT INTO Emp99(name, salary, designation, Email, Contact ,City) VALUES (?, ?, ?, ?, ?, ?)";  
    return template.update(sql, p.getName(), p.getSalary(), p.getDesignation(), p.getEmail(), p.getContact(), p.getCity());  
}
 
public int update(Emp p) {
    String sql = "UPDATE Emp99 SET name=?, salary=?, designation=?, Email=?, Contact=?, City=? WHERE id=?";
    return template.update(sql, p.getName(), p.getSalary(), p.getDesignation(), p.getEmail(), p.getContact(),p.getCity(), p.getId());
}

public int delete(int id){  
    String sql="delete from Emp99 where id="+id+"";  
    return template.update(sql);  
}  
public Emp getEmpById(int id){  
    String sql="select * from Emp99 where id=?";  
    return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<Emp>(Emp.class));  
} 
public List<Emp> searchEmployeesByEmail(String Email) {
    String sql = "SELECT * FROM Emp99 WHERE Email LIKE ?";
    return template.query(sql, new Object[]{"%" + Email + "%"}, new BeanPropertyRowMapper<>(Emp.class));
}

public List<Emp> getEmployees(){  
    return template.query("select * from Emp99",new RowMapper<Emp>(){  
        public Emp mapRow(ResultSet rs, int row) throws SQLException {  
            Emp e=new Emp();  
            e.setId(rs.getInt(1));  
            e.setName(rs.getString(2));  
            e.setSalary(rs.getFloat(3));  
            e.setDesignation(rs.getString(4));
            e.setEmail(rs.getString(5));  
            e.setContact(rs.getString(6));
            e.setCity(rs.getString(7));
            
            return e;  
        }  
    });  
}  
}  