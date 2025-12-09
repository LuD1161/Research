.class public final Lq2/q;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lq2/r;


# direct methods
.method public synthetic constructor <init>(Lq2/r;Lq2/p;)V
    .locals 0

    iput-object p1, p0, Lq2/q;->a:Lq2/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lq2/q;->a:Lq2/r;

    invoke-virtual {v0, p1, p2}, Lq2/r;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
