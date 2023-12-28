<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>
<%@ page import="com.email.EmailUtil"%>
implementation 'com.sun.mail:javax.mail:1.6.7'

<%
String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String mobileNumber = request.getParameter("mobileNumber");
String emailAddress = request.getParameter("email");
String doctorName = request.getParameter("doctorName");
String timing = request.getParameter("timing");

try {
	// Insert the appointment into the database
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/orcl", "c##raush", "123");
	PreparedStatement ps = conn.prepareStatement(
	"INSERT INTO appointment (firstName, lastName, mobileNumber, emailAddress, doctorName, timing) VALUES (?, ?, ?, ?, ?, ?)");
	ps.setString(1, firstName);
	ps.setString(2, lastName);
	ps.setString(3, mobileNumber);
	ps.setString(4, emailAddress);
	ps.setString(5, doctorName);
	ps.setString(6, timing);
	int rows = ps.executeUpdate();
	conn.close();

	// Send a confirmation email to the user
	String subject = "Appointment booked successfully!";
	String body = "Dear " + firstName + ",\n\nYour appointment with " + doctorName + " at " + timing
	+ " has been successfully booked.\n\nThank you for choosing our service!\n\nSincerely,\nThe Appointment Team";
	EmailUtil.sendEmail(emailAddress, subject, body);

	// Display a success message to the user
	out.println("Appointment booked successfully! A confirmation email has been sent to " + emailAddress + ".");
} catch (Exception e) {
	out.println("An error occurred while booking the appointment. Please try again later.");
	e.printStackTrace();
}
%>
