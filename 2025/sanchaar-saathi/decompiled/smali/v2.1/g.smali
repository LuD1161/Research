.class public final Lv2/g;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic e:LR1/g;


# direct methods
.method public constructor <init>(Lv2/h;Landroid/os/Handler;LR1/g;)V
    .locals 0

    iput-object p3, p0, Lv2/g;->e:LR1/g;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lv2/g;->e:LR1/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LR1/g;->d(Ljava/lang/Object;)Z

    return-void
.end method
