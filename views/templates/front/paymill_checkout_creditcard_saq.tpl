{**
* 2012-2014 PAYMILL
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
*
*  @author    PAYMILL <support@paymill.com>
*  @copyright 2012-2014 PAYMILL
*  @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

{if $paymillCardNumber === '' || $paymillMonth === '' || $paymillYear === ''}
    <script lang="javascript">
        paymillEmbedFrame();
    </script>
{else}
    <table id="paymill_fast_checkout_table">
        <tr>
            <td>{l s='Credit Card Number' mod='pigmbhpaymill'}: </td>
            <td class="paymill-card-number-{$paymillBrand}">{$paymillCardNumber}</td>
        </tr>
        <tr>
            <td>{l s='CVC' mod='pigmbhpaymill'}: </td>
            <td>{$paymillCvc}</td>
        </tr>
        <tr>
            <td>{l s='Credit Card Holder' mod='pigmbhpaymill'}: </td>
            <td>{$paymillCardHolder}</td>
        </tr>
        <tr>
            <td>{l s='Valid until (MM/YYYY)' mod='pigmbhpaymill'}: </td>
            <td>{$paymillMonth}/{$paymillYear}</td>
        </tr>
        <tr>
            <td>

            </td>
            <td>
                <button id="paymill_fast_checkout_iframe_change" class="button-middle small" type="button">{l s='Change' mod='pigmbhpaymill'}</button>
            </td>
        </tr>
    </table>
{/if}