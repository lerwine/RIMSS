using System;

namespace Rimss.Common.Collections
{
    public interface IExpandable
    {
        event EventHandler IsExpandedChanged;
        event EventHandler Expanded;
        event EventHandler Collapsed;
        bool IsExpanded { get; set; }
        void ToggleExpand();
        void Expand();
        void Collapse();
    }

    public interface IExpandable<T> : IExpandable
    {
        T Value { get; set; }
    }
}
