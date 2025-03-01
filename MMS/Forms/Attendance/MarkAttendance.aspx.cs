using System;
using MMS.Forms.Attendance;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Diagnostics;

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

        private string get_formated_date()
        {
            string date = date_fld.Text; // is yyyy-MM-dd
            string[] date_d = date.Split('-');
            return date_d[0] + '-' + date_d[2] + '-' + date_d[1];
        }

        private void show_table_data()
        {
            Table1.Rows.Clear();
            ArrayList attendance = this.db_service.get_attendance_for(this.get_formated_date(), me_rl.SelectedValue);
            ArrayList attendance_status = new ArrayList();
            if (attendance.Count > 0)
            {
                Debug.WriteLine("Attendacne found:");
                Debug.WriteLine(attendance[0]);
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
                CheckBox cbx = new CheckBox();
                if (attendance_status.Contains(user[0]))
                {
                    cbx.Checked = true;
                }
                TableCell cell2 = new TableCell();
                cell2.Controls.Add(cbx);
                tbl_row.Cells.Add(cell2);

                Table1.Rows.Add(tbl_row);
            }


        }

        protected void fetch_btn_Click(object sender, EventArgs e)
        {
            search_fld.Text = date_fld.Text;
            this.show_table_data();
        }

        protected void save_btn_Click(object sender, EventArgs e)
        {
            ArrayList att = this.db_service.save_attendance(get_formated_date(), me_rl.SelectedValue);
            //search_fld.Text = att[0].ToString();
        }
    }
}