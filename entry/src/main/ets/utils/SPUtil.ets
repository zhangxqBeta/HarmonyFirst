import dataPreferences from "@ohos.data.preferences"

export class SPUtil {
  private static readonly context = getContext()

  private static async getPreference() {
    return dataPreferences.getPreferences(this.context, "default_sp")
  }

  static async putString(key: string, value: string) {
    let sp = await this.getPreference()
    sp.put(key, value)
    sp.flush()
  }

  static async getString(key: string) {
    let sp = await this.getPreference()
    return sp.get(key, "")
  }
}