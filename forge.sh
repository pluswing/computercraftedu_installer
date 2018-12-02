FORGE_VERSION='1.8.9-forge1.8.9-11.15.1.1722'
GAME_DIRECTORY="${HOME}/computercraftedu"

curl -o forge.jar "https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.8.9-11.15.1.1722/forge-1.8.9-11.15.1.1722-installer.jar"
curl -o ComputerCraftPlusComputerCraftEdu1.79.jar "http://computercraftedu.com/downloads/ComputerCraftPlusComputerCraftEdu1.79.jar"

echo "Minecraft Forgeのインストーラーを起動します。"
echo "clientをインストールしてください。"

java -jar forge.jar

mkdir -p "$GAME_DIRECTORY/mods/"
cp "ComputerCraftPlusComputerCraftEdu1.79.jar" "$GAME_DIRECTORY/mods/"
ruby make_gamedir.rb 'cumputerfraftedu' "$FORGE_VERSION" "$GAME_DIRECTORY"

echo "完了."
