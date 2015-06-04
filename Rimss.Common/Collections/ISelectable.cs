using System;

namespace Rimss.Common.Collections
{
    public interface ISelectable
    {
        event EventHandler IsSelectedChanged;
        event EventHandler Selected;
        event EventHandler Deselected;
        bool IsSelected { get; set; }
        void ToggleSelect();
        void Select();
        void Deselect();
    }

    public interface ISelectable<T> : ISelectable
    {
        T Value { get; set; }
    }
}
