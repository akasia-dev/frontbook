# polyger title: [frontbook-cli] Update the cli dist file
# Please fill out the command you want below.

projectPath="${PWD}";
cliProject="${PWD}/backend/frontbook-cli";
cliDist="${PWD}/backend/frontbook-cli-dist";

cd "${cliProject}";
npm i;
npm run build;
npm run export;

cd "${contiDist}";
rm -rf "${contiDist}/export";

mkdir "${cliDist}/export";
cp -R "${cliProject}/export" "${cliDist}";