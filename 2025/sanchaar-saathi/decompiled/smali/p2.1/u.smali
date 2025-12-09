.class public final Lp2/u;
.super Lp2/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lp2/w;LR1/g;)V
    .locals 2

    new-instance v0, Lq2/s;

    const-string v1, "OnCompleteUpdateCallback"

    invoke-direct {v0, v1}, Lq2/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lp2/t;-><init>(Lp2/w;Lq2/s;LR1/g;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lp2/t;->b(Landroid/os/Bundle;)V

    invoke-static {p1}, Lp2/w;->a(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp2/t;->d:LR1/g;

    new-instance v1, Ls2/a;

    invoke-static {p1}, Lp2/w;->a(Landroid/os/Bundle;)I

    move-result p1

    invoke-direct {v1, p1}, Ls2/a;-><init>(I)V

    invoke-virtual {v0, v1}, LR1/g;->c(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lp2/t;->d:LR1/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LR1/g;->d(Ljava/lang/Object;)Z

    return-void
.end method
