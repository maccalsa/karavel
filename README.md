sdk install java 17.0.12-graal
sdk install maven 3.9.8
mvn -N io.takari:maven:wrapper


nix-env -iA nixpkgs.upx

gu install native-image
