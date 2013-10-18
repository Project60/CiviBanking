<style>
  #btx-details .btxheader.collapsible-closed {ldelim}
  background: url("{$base_url}/sites/all/modules/civicrm/i/TreeMinus.gif")  4px 4px no-repeat;
  background-color: #CCC;
  color: #000;
  font-weight: bold;
  padding-left: 20px;
  {rdelim}
  #btx-details .btxheader {ldelim}
  background: url("{$base_url}/sites/all/modules/civicrm/i/TreePlus.gif") 4px 4px no-repeat;
  background-color: #CCC;
  color: #000;
  font-weight: bold;
  padding-left: 20px;
  {rdelim}
</style>

{literal}
  <style>
    #btx {
      background-color: #F4F4ED;
    }
    #btx div {
    }
    #btx div.content {
      padding: 4px 8px;;
      margin: 0;
      border: none;
      background-color: #f7f7f7;
    }
    #btx h4 {
      width: auto;
      background-color: #CCC;
      margin: 0px;
      padding: 2px 8px;
      color: #000;
    }
    #btx table td {
      padding: 0;
    }
    #btx table td div {
      padding: 2px 8px;
    }
    #btx-amt {
      float: left;
      width: 25%;
      margin: 0;
    }
    #btx-info {
      float: left;
      width: 25%;
      margin: 0;
    }
    #btx-debtor {
      float: left;
      width: 50%;
      margin: 0;
    }
    #btx-purpose {
      float: left;
      width: 100%;
      margin: 0;
    }
    #btx-details {
      float: left;
      width: 100%;
      margin: 0;
    }

    .btxvalue {
      background-color: #F4F4ED;  
      border-bottom: 1px solid white;
    }
    .btxc {
      text-align: center;
    }
    .btxl {
      text-align: left;
    }
    .btxamt {
      text-align: right;
      font-size: 36px;
      font-weight: bold;
      padding: 4px 8px;
      line-height: 1.2em;
    }
    .btxlabel {
      background-color: #FAFAFA;  
      float: left;
      width: 45px;
      font-size: 10px;
      color: #999;
      margin-right: 4px;
    }
    .btxcurr {
      float: right;
      font-size: 10px;
      font-weight: normal;
      line-height: 10px;
      vertical-align: top;
    }
    .btxheader {
      background-color: #CCC;
      color: #000;
      font-weight: bold;
      padding-left: 20px;
    }
    table.suggestions table {
      border: 0px solid red !important;
    }
    table.suggestions tr td.layout {
      padding: 0px !important;
    }
    table.suggestions table tr.suggestion {
      background-color: #fafafa;
    }
    table.suggestions table tr.suggestion:hover {
      background-color: #eee;
    }
    td.prob {
      font-size: 18px;
      font-weight: bold;
      padding:  8px 4px;
      text-align: center;
    }
    td.suggest {
      font-family: Georgia,"Times New Roman",Times,serif;
      font-size: 14px;
      color: #666;
      padding:  8px;
    }
    td.suggest h4 {
      font-family: Arial,sans-serif;
      font-size: 18px;
      font-weight: bold;
      margin: 0 0 4px 0;
      padding-left: 4px;
      color: #000;
    }
    td.suggest ul {
      margin: 0px;
      padding: 4px;
    }
    td.suggest ul li{
      margin: 0 0 0 15px;
    }
    table.explorer td.xk {
      background-color: #FAFAFA;  
      font-size: 10px;
      color: #999;
      width: 25%;
    }
    table.explorer td {
      background-color: #F4F4ED;  
      border-bottom: 1px solid white;
      padding: 1px 4px !important;
    }
  </style>
{/literal}

{* This page is generated by CRM/Banking/Page/Review.php *}

  <div id="btx">
    <table id="btx-amt">
      <tr>
        <td>
          <div class="btxheader">
            BASIC INFO
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="btxvalue btxamt">
            <div class="btxcurr">{$payment->currency}</div>
            {$payment->amount}
          </div>
          <div class="btxlabel">Booking</div>
          <div class="btxvalue btxc">
            {$payment->booking_date|truncate:10:''}
          </div>
          <div class="btxlabel">Value</div>
          <div class="btxvalue btxc">
            {$payment->value_date|truncate:10:''}
          </div>
        </td>
      </tr>
    </table>
    <table id="btx-info">
      <tr>
        <td>
          <div class="btxheader">
            TRANSACTION INFO
          </div>
        </td>
      </tr>
      <tr>
        <td>
          <div class="btxvalue">
            {$my_bao->description}
          </div>
          <div class="btxlabel">Stmt. #</div>
          <div class="btxvalue btxc">
            {$payment->tx_batch_id}&nbsp;
          </div>
          <div class="btxlabel">Trans. #</div>
          <div class="btxvalue btxc">
            {$payment->id}&nbsp;
          </div>
          <div class="btxlabel">Status</div>
          <div class="btxvalue btxc">
            {$btxstatus.label}
          </div>
        </td>
      </tr>
    </table>
    <table id="btx-debtor">
      <tr>
        <td>
          <div class="btxheader">
            DEBTOR INFO
          </div>
        </td>
      </tr>
      <tr >
        <td>
          <div class="btxlabel">Account</div>
          <div class="btxvalue btxl">
            {if $ba_data_parsed.iban}
              <a href="">{$ba_data_parsed.iban}</a>
            {else}
              {$payment_data_parsed._party_ba_id}&nbsp;
            {/if}
          </div>
          <div class="btxlabel">Address</div>
          <div class="btxvalue btxl">
            {$payment_data_parsed.street_address}&nbsp;
          </div>
          <div class="btxlabel">&nbsp;</div>
          <div class="btxvalue btxl">
            {$payment_data_parsed.postal_code} {$payment_data_parsed.city}&nbsp;
          </div>
          <div class="btxlabel">Owner</div>
          <div class="btxvalue btxl">
            {if $ba_data_parsed.name}{$ba_data_parsed.name}&nbsp;{else}{$payment_data_parsed.name}&nbsp;{/if}
          </div>
          {if $contact}
            <div class="btxlabel">Contact</div>
            <div class="btxvalue btxl">
              <a href="{$base_url}/civicrm/contact/view?reset=1&cid={$contact.id}">{$contact.display_name}&nbsp;</a>
            </div>
          {/if}
        </td>
      </tr>
    </table>
    <table id="btx-purpose">
      <tr >
        <td>
          <div class="btxlabel">Purpose</div>
          <div class="btxvalue btxl">
            {*{$payment_data_raw.move_msg}&nbsp;*}
            {$payment_data_parsed.purpose}
          </div>
        </td>
      </tr>
    </table>
    <table id="btx-details">
      <tr >
        <td>
          <div class="btxheader collapsible" onclick="cj('#extra').toggle();
              cj(this).toggleClass('collapsible-closed');">
            EXTRA <span style="font-weight: normal;">(click to see)</span>
          </div>
        </td>
      </tr>
      <tr style="display: none;" id="extra">
        <td>
          <table class="explorer">
            {foreach from=$extra_data key=k item=v}
              <tr><td class="xk">{$k}</td><td>{$v}</td></tr>
                {/foreach}
          </table>
        </td>
      </tr>
    </table>
  <div class="clear"></div>
  </div>
  <br/>

  <div align="right" class="clearfix" style="width: 100%;">
    {if $btxstatus.label != 'Processed'}
      <a href="{$url_run}" class="button"><span title="Match (again)"><div class="icon preview-icon"></div>Match (again)</span></a>
      {if isset($url_skip_forward)}
        <a href="#" onClick="execute_selected()" class="button button-disabled"><span title="Confirm and Continue"><div class="icon next-icon"></div>Confirm and Continue</span></a>
        <a href="{$url_skip_forward}" class="button"><span title="Skip"><div class="icon next-icon"></div>Skip</span></a>
      {else}
        <a href="#" onClick="execute_selected()" class="button button-disabled"><span title="Confirm and Exit"><div class="icon next-icon"></div>Confirm and Exit</span></a>
        <a href="{$url_back}" class="button"><span title="Skip and Exit"><div class="icon next-icon"></div>Skip and Exit</span></a>
      {/if}
    {/if}
    <a href="{$url_back}" class="button" style="float:right;">
      <span title="Back"><div class="icon back-icon"></div>Back to payment list</span>
    </a>
  </div>

  {if $btxstatus.label != 'Processed'}
    <br/><br/>
    <h2>Suggestions </h2>
    <br/>
    <table class="suggestions">
      <tr>
        <td  class="layout">
          <table>
            {foreach from=$suggestions item=suggestion name=action_loop}
              <tr  class="suggestion">
                <td class="prob" width="60" align="center">
                  <span style="color: {$suggestion.color};">{$suggestion.probability}</span>
                </td>
                <td width="10" align="center" style="background-color: {$suggestion.color};"></span>
                </td>
                <td class="suggest">
                  <form id="{$suggestion.hash}" action="{$url_execute}" method="POST">
                  <input type="hidden" name="execute_suggestion" value="{$suggestion.hash}"/>
                  {* These will be generated by the matcher plugins *}
                  <h4 style="color: {$suggestion.color};">{$suggestion.title}</h4>
                  {$suggestion.visualization}
                  {$suggestion.actions}
                  </form>                
                </td>
                <td valign="middle">
                    <input type="radio" name="selected_suggestion" value="{$suggestion.hash}" style="width:2em; height:2em;" {if $smarty.foreach.action_loop.first}checked{/if} />
                </td>
              <tr>
              {/foreach}
          </table>
        </td>
      </tr>
    </table>
  {/if}


<!-- Required JavaScript functions -->
{* forwards to another page if set: *}
{$page_forward}

{literal}
<script language="JavaScript">
function execute_selected() {
  var selected_suggestion = cj('input[name=selected_suggestion]:checked').val();
  document.getElementById(selected_suggestion).submit();
}
</script>
{/literal} 
