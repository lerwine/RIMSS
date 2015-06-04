using System;

namespace Rimss.Common.Events
{
    public class IndexShiftEventArgs : EventArgs
    {
        public IndexShiftParameter[] Parameters { get; set; }

        public IndexShiftEventArgs(params IndexShiftParameter[] parameters)
            : base()
        {
            this.Parameters = (parameters == null) ? new IndexShiftParameter[0] : parameters;
        }
    }
}
