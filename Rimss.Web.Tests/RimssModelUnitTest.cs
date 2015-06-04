using System;
using System.Linq;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Rimss.Web.Models;

namespace Rimss.Web.Tests
{
    [TestClass]
    public class RimssModelUnitTest
    {
        [TestMethod]
        public void ConstructorTestMethod()
        {
            using (RimssDbEntities entities = new RimssDbEntities())
            {
                Assert.IsNotNull(entities.Applications);
                foreach (Application appl in entities.Applications)
                {
                    Assert.IsNotNull(appl);
                }
            }
        }
    }
}
