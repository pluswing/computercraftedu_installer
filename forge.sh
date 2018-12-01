FORGE_VERSION='1.8.9-forge1.8.9-11.15.1.1722'

curl -o forge.jar "https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.8.9-11.15.1.1722/forge-1.8.9-11.15.1.1722-installer.jar"
curl -o ComputerCraftPlusComputerCraftEdu1.79.jar "http://computercraftedu.com/downloads/ComputerCraftPlusComputerCraftEdu1.79.jar"

echo "Minecraft Forgeのインストーラーを起動します。"
echo "clientをインストールしてください。"

java -jar forge.jar

echo "インストール先をここにドラッグ＆ドロップしてください。"
echo -n ":"
read gamedirectory

mkdir -p "$gamedirectory/mods/"
cp "ComputerCraftPlusComputerCraftEdu1.79.jar" "$gamedirectory/mods/"
ruby make_gamedir.rb 'cumputerfraftedu' "$FORGE_VERSION" "$gamedirectory"

echo "完了."
