package com.Battleship;

import java.util.*;

public class Protorype {
    public static void main(String[] args) {

        //this is for identify the instrument
        oceanMap();
        userShip();
        computerShip();
        battle();
    }

    //How to make Ocean with array
    static String[][] ocean=new String[10][10];
    public static List<List> log=new ArrayList<>();
    public static int shipOfPlayers = 5;
    public static int shipOfEnemy = 5;

    public static void oceanMap(){
        System.out.println("  0123456789"); // border top
        for(int a=0; a< ocean.length; a++){
            //for border left
            System.out.print(a);
            System.out.print("|");
            for(int b=0; b< ocean.length; b++){
                if (ocean[a][b]==null){
                    System.out.print(" ");
                }
                if(ocean[a][b]=="1"){
                    System.out.print("$");
                } else if (ocean[a][b]=="2") {
                    System.out.print(" ");
                } else if (ocean[a][b]=="x") {
                    System.out.print("x");
                } else if (ocean[a][b]=="!") {
                    System.out.print("!");
                } else if (ocean[a][b]=="-") {
                    System.out.print("-");
                }
            }
            //for border right
            System.out.print("|");
            System.out.println(a);
        }
        System.out.println("  0123456789"); // border bottom
    }

    //how tou make our ship
    public static void userShip(){
        int shipNo = 1;
        Scanner input = new Scanner(System.in); // agar kita bisa mengambil koordinat nya
        while (shipNo<=5) {
            System.out.println("Enter x coordinate from The BattleShip" + shipNo);
            int x = input.nextInt();
            System.out.println("Enter y coordinate from The BattleShip" + shipNo);
            int y = input.nextInt();
            if (x>=0 && x<10 && y>=0 && y<10){
                if (ocean[x][y] != null){
                    System.out.println("Already other Battleship in this coordinate");
                }
                else{
                     ocean[x][y] = "1";
                     shipNo++;
                }
            }
            else {
                System.out.println("You're going to Outside The Battlefield");
            }
        }
        oceanMap();
    }

    //how to generate automaticaly enemy ship
    public static void computerShip(){
        Random randomNumber = new Random();
        int shipNo = 1;
        System.out.println("Set up Enemy Battleship");
        while (shipNo<=5){
            int x = randomNumber.nextInt(10);
            int y = randomNumber.nextInt(10);
            if(ocean[x][y]==null){
                ocean[x][y] = "2";
                System.out.println("Battleship " + shipNo + " Ready");
                shipNo++;

            }
        }
        oceanMap();
    }
    //make launch attack
    public  static  void launchAttack(int x, int y, String user){
        if (ocean[x][y] == null){
            ocean [x][y] = "-";
            if (user.equals("player")){
                System.out.println("Ahhh you missed. Try again next time");
            }
            if (user.equals("enemy")){
                System.out.println("Enemy has missed");
            }
        }
        if (ocean[x][y] == "1"){
            ocean[x][y] = "x";
            if (user.equals("player")){
                System.out.println("Alert!!!! You attack your ship ");
            }
            if (user.equals("enemy")){
                System.out.println("The Enemy sunk your ship");
            }
            --shipOfPlayers;
        }
        if (ocean[x][y] == "2"){
            ocean [x][y] = "!";
            if (user.equals("player")){
                System.out.println("Hooray You done sunk The Enemy ship");
            }
            if (user.equals("enemy")){
                System.out.println("Enemy sunk their Ship");
            }
            --shipOfEnemy;
        }
        log.add(turnToList(x,y));
    }
    public static List turnToList(int coor1, int coor2){
        List<Integer> coordinate = new ArrayList<>();
        coordinate.add(coor1);
        coordinate.add(coor2);
        return coordinate;
    }
    public static void playerTurn(){
        System.out.println("Your Turn");
        Scanner input=new Scanner(System.in);
        boolean trueCoordinate = true;
        while (trueCoordinate){
            System.out.println("Enter The x Coordinate");
            int x = input.nextInt();
            System.out.println("Enter The y Coordinate");
            int y = input.nextInt();
            if (x>=0  && x<=9 && y >=0 && y <=9){
                if (!log.contains(turnToList(x, y))){
                    launchAttack(x, y, "player");
                    trueCoordinate = false;
                }
                else {
                    System.out.println("This coordinate has been attack");
                }
            }
            else {
                System.out.println("The coordinat is out of range");
            }
        }
    }

    public static void enemyTurn(){
        System.out.println("Enemy's Turn");
        Random randomNum = new Random();
        boolean trueCoordinate = true;
        while (trueCoordinate){
            int x = randomNum.nextInt(10);
            int y = randomNum.nextInt(10);
            if (!log.contains(turnToList(x, y))){
                launchAttack(x, y, "enemy");
                trueCoordinate = false;
            }
        }
    }

    public static void battle(){
        boolean onBattle = true;
        while (onBattle){
            playerTurn();
            enemyTurn();
            oceanMap();
            System.out.println("Your ship = " + shipOfPlayers + " Enemy ship = " + shipOfEnemy);
            if (shipOfPlayers == 0){
                System.out.println("*****GAME OVER*****");
                onBattle = false;
            }
            if (shipOfEnemy == 0){
                System.out.println("*****CONGRATS YOU WIN THE GAME*****");
                onBattle = false;
            }
        }
    }
}
