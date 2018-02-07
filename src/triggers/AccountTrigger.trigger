/**
 * Created by macbook on 2/7/18.
 */

trigger AccountTrigger on Account (before insert) {
    //this is my first change
 if (Trigger.isBefore) {
     System.debug('Hello world');
 }
}