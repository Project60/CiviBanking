<?php
/*-------------------------------------------------------+
| Project 60 - CiviBanking                               |
| Copyright (C) 2013-2018 SYSTOPIA                       |
| Author: B. Endres (endres -at- systopia.de)            |
| http://www.systopia.de/                                |
+--------------------------------------------------------+
| This program is released as free software under the    |
| Affero GPL v3 license. You can redistribute it and/or  |
| modify it under the terms of this license which you    |
| can read by viewing the included agpl.txt or online    |
| at www.gnu.org/licenses/agpl.html. Removal of this     |
| copyright header is strictly prohibited without        |
| written permission from the original author(s).        |
+--------------------------------------------------------*/

/**
 * The Analyser is a simplified matcher, that does not produce any suggestions.
 * Instead, it will analyse the data contained in the transaction.
 *
 * Typically, an analyser will apply organisation specific knowledge
 * 
 * @package org.project60.banking
 * @copyright GNU Affero General Public License
 * $Id$
 *
 */
abstract class CRM_Banking_PluginModel_Analyser extends CRM_Banking_PluginModel_Matcher {

  /**
   * no auto exec (or indeed any kind of execution) for analysers
   */
  function autoExecute() {
    return false;
  }

  /** 
   * Analyse the given transaction and modify/improve its data
   */
  public abstract function analyse(CRM_Banking_BAO_BankTransaction $btx, CRM_Banking_Matcher_Context $context);

  /** 
   * Generate a set of suggestions for the given bank transaction
   * 
   * @return array(match structures)
   */
  public function match(CRM_Banking_BAO_BankTransaction $btx, CRM_Banking_Matcher_Context $context) {
    // call the analyser function
    $this->analyse($btx, $context);
    return null;
  }

    /** 
   * Generate html code to visualize the given match. The visualization may also provide interactive form elements.
   * 
   * @val $match    match data as previously generated by this plugin instance
   * @val $btx      the bank transaction the match refers to
   * @return html code snippet
   */  
  function visualize_match( CRM_Banking_Matcher_Suggestion $match, $btx) {
    // Analysers don't have suggestions
    return NULL;
  }

  /** 
   * Generate html code to visualize the executed match.
   * 
   * @val $match    match data as previously generated by this plugin instance
   * @val $btx      the bank transaction the match refers to
   * @return html code snippet
   */  
  function visualize_execution_info( CRM_Banking_Matcher_Suggestion $match, $btx) {
    // Analysers don't get executed
    return NULL;
  }


}