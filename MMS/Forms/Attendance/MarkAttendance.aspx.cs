using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Security.Permissions;
using System.Data.SqlClient;

namespace MMS.Forms.Attendance
{
    public partial class MarkAttendance : System.Web.UI.Page
    {
        AttendanceDatabase db_service = new AttendanceDatabase();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                date_fld.Text = DateTime.Now.ToString("yyyy-MM-dd");
                this.show_table_data();
            }
        }

        //private string get_formated_date()
        //{
        //    string date = date_fld.Text; // is yyyy-MM-dd
        //    string[] date_d = date.Split('-');
        //    return date_d[0] + '-' + date_d[1] + '-' + date_d[2];
        //}

        private void show_table_data()
        {
            
            ArrayList attendance = this.db_service.get_attendance_for(date_fld.Text, me_rl.SelectedValue);
            ArrayList attendance_status = new ArrayList();
            if (attendance.Count > 0)
            {
                attendance_status = this.db_service.get_attendees_for(attendance[0].ToString());
            }
            ArrayList users = this.db_service.get_users_for_attendance();

            for (int i=0; i<users.Count; i++)
            {
                ArrayList user = (ArrayList) users[i];
                TableRow tbl_row = new TableRow();

                for(int j=1; j<user.Count; j++)
                {
                    TableCell cell = new TableCell();
                    cell.Controls.Add(new LiteralControl((string) user[j]));
                    tbl_row.Cells.Add(cell);
                }
                Button btn = new Button();
                btn.Text = "Mark";
                btn.ID = "user_" + user[0];
                btn.OnClientClick = "mark_btn_Click";
                if (attendance_status.Contains(user[0]))
                {
                    //cbx.Checked = true;
                }
                TableCell cell2 = new TableCell();
                cell2.Controls.Add(btn);
                tbl_row.Cells.Add(cell2);

                Table1.Rows.Add(tbl_row);
            }

        }

        protected void mark_btn_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand(
                "insert into [jointable] (aid, uid) values (1,5);",
                new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=mms_db;Integrated Security=True;Encrypt=False")
                );
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            //Button btn = (Button) sender;
            //ArrayList att = this.db_service.save_attendance(date_fld.Text, me_rl.SelectedValue);
            //search_fld.Text = "hello";
            //this.db_service.save_attendee("1", "5");
            //show_table_data();
        }

        protected void fetch_btn_Click(object sender, EventArgs e)
        {
            this.show_table_data();
        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            //ArrayList att = this.db_service.save_attendance(date_fld.Text, me_rl.SelectedValue);
            //ArrayList users = this.db_service.get_users_for_attendance();
            //ArrayList presents = new ArrayList();
            //ArrayList absents = new ArrayList();
            //foreach (ArrayList item in users)
            //{
            //    CheckBox cbx = (CheckBox) Page.FindControl("user_" + item[0].ToString());
            //    if (cbx.Checked)
            //    {
            //        presents.Add(item[0].ToString());
            //    }
            //    else
            //    {
            //        absents.Add(item[0].ToString());
            //    }
            //}

            //this.db_service.save_attendee(att[0].ToString(), presents);

            //this.show_table_data();
        }
    }
}