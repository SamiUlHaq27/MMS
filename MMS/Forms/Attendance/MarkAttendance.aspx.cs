using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


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
                CheckBox cbx = new CheckBox();
                cbx.Enabled = false;
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
            this.show_table_data();
        }

        protected void toggle_btn_Click(object sender, EventArgs e)
        {
            //ArrayList std = this.db_service.get_student(roll_no_fld.Text);
            //ArrayList att = this.db_service.get_attendance_for(date_fld.Text, me_rl.SelectedValue);
            //ArrayList pres = this.db_service.get_attendees_for(att[0].ToString());

            //if (pres.Contains(std[0].ToString()))
            //{
                
            //} else
            //{
                this.db_service.save_attendee("1", "5");
            //}
            this.show_table_data();
        }
    }
}