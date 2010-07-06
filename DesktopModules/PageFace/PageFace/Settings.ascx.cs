using System;
using DotNetNuke.Entities.Modules;
using DotNetNuke.Services.Exceptions;

namespace XH.Modules.PageFace
{
    public partial class Settings : ModuleSettingsBase
    {

        /// <summary>
        /// handles the loading of the module setting for this
        /// control
        /// </summary>
        public override void LoadSettings()
        {
            try
            {
                if (!IsPostBack)
                {
                    object setting = TabModuleSettings["template"];
                    if (setting != null)
                    {
                        string settingValue = setting.ToString();
                        txtTemplate.Text = settingValue;
                    }
                }
            }
            catch (Exception ex)
            {
                Exceptions.ProcessModuleLoadException(this, ex);
            }
        }

        /// <summary>
        /// handles updating the module settings for this control
        /// </summary>
        public override void UpdateSettings()
        {
            try
            {
                ModuleController controller = new ModuleController();
                controller.UpdateTabModuleSetting(this.TabModuleId, "template", txtTemplate.Text);
            }
            catch (Exception ex)
            {
                Exceptions.ProcessModuleLoadException(this, ex);
            }
        }
    }
}