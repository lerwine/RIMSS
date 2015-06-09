using System;
using System.Linq;

namespace Rimss.Common.Attributes
{
    [AttributeUsage(AttributeTargets.Field, Inherited = false, AllowMultiple = false)]
    public sealed class DisplayTextAttribute : Attribute
    {
        readonly string _value;

        public DisplayTextAttribute(string value)
        {
            this._value = value;
        }

        public string Value
        {
            get { return _value; }
        }

        public static string GetDescription<TEnum>(TEnum value)
            where TEnum : struct, IComparable, IFormattable
        {
            Type t = value.GetType();
            string n = Enum.GetName(t, value);
            return t.GetField(n).GetCustomAttributes(t, false).OfType<DisplayTextAttribute>().Select(a => a.Value).Where(s => !String.IsNullOrWhiteSpace(s)).DefaultIfEmpty(n).First();
        }
    }
}
