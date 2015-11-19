using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Rimss.Web.Data
{
    public partial class ConversionJobLog
    {
        private Common.JobReasonCodes? _reasonCode = null;

        public Common.JobReasonCodes ReasonCode
        {
            get
            {
                if (!this._reasonCode.HasValue)
                    this._reasonCode = (Common.JobReasonCodes)(this.ReasonId);

                return this._reasonCode.Value;
            }
            set
            {
                if (value == this.ReasonCode)
                    return;

                this._reasonCode = value;
                this.ReasonId = (int)value;
            }
        }
    }
}