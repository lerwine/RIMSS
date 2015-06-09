using Rimss.Common.Attributes;

namespace Rimss.Common
{
    /// <summary>
    /// Enumeration of supported image types
    /// </summary>
    public enum ImageFormatCodes : byte
    {
        /// <summary>
        /// Joint Photographic Experts Group (JPEG) image format.
        /// </summary>
        [DisplayText("Joint Photographic Experts Group (JPEG) image format.")]
        Jpeg = 0,

        /// <summary>
        /// W3C Portable Network Graphics (PNG) image format.
        /// </summary>
        [DisplayText("W3C Portable Network Graphics (PNG) image format.")]
        Png = 1,

        /// <summary>
        /// Graphics Interchange Format (GIF) image format.
        /// </summary>
        [DisplayText("Graphics Interchange Format (GIF) image format.")]
        Gif = 2,

        /// <summary>
        /// Windows icon image format.
        /// </summary>
        [DisplayText("Windows icon image format")]
        Icon = 3,

        /// <summary>
        /// Tagged Image File Format (TIFF) image format.
        /// </summary>
        [DisplayText("Tagged Image File Format (TIFF) image format.")]
        Tiff = 4,

        /// <summary>
        /// Bitmap (BMP) image format.
        /// </summary>
        [DisplayText("Bitmap (BMP) image format.")]
        Bmp = 5,

        /// <summary>
        /// Windows metafile (WMF) image format.
        /// </summary>
        [DisplayText("Windows metafile (WMF) image format.")]
        Wmf = 6,

        /// <summary>
        /// Enhanced metafile (EMF) image format.
        /// </summary>
        [DisplayText("Enhanced metafile (EMF) image format.")]
        Emf = 7
    }
}
