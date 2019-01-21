
import {
  JupyterLab, JupyterLabPlugin
} from '@jupyterlab/application';

import {
  IThemeManager
} from '@jupyterlab/apputils';


/**
 * A plugin for the Telamonian Darcula
 */
const plugin: JupyterLabPlugin<void> = {
  id: '@telamonian/theme-darcula:plugin',
  requires: [IThemeManager],
  activate: function(app: JupyterLab, manager: IThemeManager) {
    manager.register({
      name: 'Telamonian Darcula',
      isLight: false,
      load: function() {
        return manager.loadCSS('@telamonian/theme-darcula/index.css');
      },
      unload: function() {
        return Promise.resolve(void 0);
      }
    });
  },
  autoStart: true
};


export default plugin;
