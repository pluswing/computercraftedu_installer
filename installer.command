FORGE_VERSION='1.8.9-forge1.8.9-11.15.1.1722'
GAME_DIRECTORY="${HOME}/computercraftedu"
SCRIPT_DIR=$(cd $(dirname $0); pwd)

JAVAC_PATH=$(which javac)
if [ ! $JAVAC_PATH ]; then
  echo "JDKをインストールしてください。"
  exit
fi

curl -o forge.jar "https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.8.9-11.15.1.1722/forge-1.8.9-11.15.1.1722-installer.jar" > /dev/null
curl -o ComputerCraftPlusComputerCraftEdu1.79.jar "http://computercraftedu.com/downloads/ComputerCraftPlusComputerCraftEdu1.79.jar" > /dev/null

echo "Minecraft Forgeのインストーラーを起動します。"
echo "この画面は閉じずに、clientをインストールしてください。"

java -jar forge.jar > /dev/null

mkdir -p "$GAME_DIRECTORY/mods/"
cp "ComputerCraftPlusComputerCraftEdu1.79.jar" "$GAME_DIRECTORY/mods/"
ruby $SCRIPT_DIR/scripts/make_gamedir.rb 'cumputerfraftedu' "$FORGE_VERSION" "$GAME_DIRECTORY"

echo "インストールが完了しました。この画面を閉じてください。"
