.class public final Lv2/l;
.super Lv2/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lv2/m;LR1/g;Ljava/lang/String;)V
    .locals 1

    new-instance p3, Lw2/i;

    const-string v0, "OnRequestInstallCallback"

    invoke-direct {p3, v0}, Lw2/i;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p3, p2}, Lv2/k;-><init>(Lv2/m;Lw2/i;LR1/g;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lv2/k;->b(Landroid/os/Bundle;)V

    const-string v0, "confirmation_intent"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    const-string v1, "is_review_no_op"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    new-instance v1, Lv2/e;

    invoke-direct {v1, v0, p1}, Lv2/e;-><init>(Landroid/app/PendingIntent;Z)V

    iget-object p1, p0, Lv2/k;->d:LR1/g;

    invoke-virtual {p1, v1}, LR1/g;->d(Ljava/lang/Object;)Z

    return-void
.end method
