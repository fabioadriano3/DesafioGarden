#!/usr/bin/env bash
# adb kill-server
# nohup appium --relaxed-security &
# adb start-server
# $ANDROID_HOME/emulator/emulator -avd Pixel_4_API_29 -no-snapshot-save &
# adb wait-for-device -read-only
# A=$(adb shell getprop sys.boot_completed | tr -d '\r')
# while [ "$A" != "1" ]; do
#     sleep 2
#     A=$(adb shell getprop sys.boot_completed | tr -d '\r')
# done
# logcat output
echo "Iniciando os testes :" $@
echo "-a (TODOS OS TESTES) -t (TESTES POR TAGS) -f (TESTES POR FEATURES - SQUADS)"
echo "EXEMPLO POR FEATURE/SQUAD: ./teste.sh -f guardar"
echo "EXEMPLO POR TAG: ./teste.sh -t aplicar_envelope"

this_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

case $1 in
    -a)
        echo "testar TODOS"
        robot -L trace -P "$this_path" -d "$this_path/logs" "$this_path/PLATAFORMAS/MOBILE/features/"
        ;;
    -t)
        echo "testar por TAG - $2"
        robot -L trace -P "$this_path" -M "Tag(s): $1" -d "$this_path/logs" -i $2 "$this_path/PLATAFORMAS/MOBILE/features/"
        ;;
    -f)
        echo "testar por FEATURE-SQUAD - $2"
        robot -L trace -P "$this_path" -d "$this_path/logs" "$this_path/PLATAFORMAS/MOBILE/features/"$2
        ;;
esac


# allure generate output/API/ --clean
# allure serve output/API/

# allure generate output/WEB/ --clean
# allure serve output/WEB/

# allure generate output/android/ --clean
# allure serve output/android/
# adb -e emu kill
# adb kill-server