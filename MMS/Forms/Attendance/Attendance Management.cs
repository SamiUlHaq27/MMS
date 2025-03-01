using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MMS.Forms.Attendance
{
	public class AttendanceDatabase
	{
		SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=mms_db;Integrated Security=True;Encrypt=False");
		SqlCommand cmd = new SqlCommand();

		public AttendanceDatabase()
		{
			this.cmd.Connection = this.con;
		}
		
		public ArrayList get_users_for_attendance()
		{
			string query = "SELECT id, user_id, name FROM [user];";
			cmd.CommandText = query;
			cmd.Connection.Open();

			SqlDataReader rdr = cmd.ExecuteReader();
			ArrayList data = new ArrayList();
            
            while (rdr.Read())
			{
				ArrayList row = new ArrayList();
				for(int i=0; i<rdr.FieldCount; i++)
				{
					row.Add(rdr[i].ToString());
				}
				data.Add(row);
			}
			rdr.Close();
			cmd.Connection.Close();
			return data;
		}

		public ArrayList get_attendance_for(string date, string time)
		{
			// date should be yyyy-dd-MM
			string query = "SELECT * FROM [attendance] WHERE date = '"+date+"' AND time = '"+time+"';";
			this.cmd.CommandText = query;
			cmd.Connection.Open();
			SqlDataReader rdr = cmd.ExecuteReader();

			ArrayList att = new ArrayList();
			if (rdr.Read())
			{
				for(int i=0; i<rdr.FieldCount; i++)
				{
					att.Add(rdr[i].ToString());
				}
			}

			rdr.Close();
			cmd.Connection.Close();
			return att;
		}

		public ArrayList get_attendees_for(string id)
		{
			string query = "SELECT user_id FROM [jnc_std_att] WHERE attendance_id = "+id+";";
			this.cmd.CommandText = query;
			this.cmd.Connection.Open();

			SqlDataReader rdr = cmd.ExecuteReader();
			ArrayList attendees = new ArrayList();
			while (rdr.Read())
			{
				attendees.Add(rdr[0].ToString());
			}

			rdr.Close();
			this.cmd.Connection.Close();
			return attendees;
		}
	}
}