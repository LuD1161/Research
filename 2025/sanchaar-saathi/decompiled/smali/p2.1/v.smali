.class public final Lp2/v;
.super Lp2/t;
.source "SourceFile"


# instance fields
.field public final f:Ljava/lang/String;

.field public final synthetic g:Lp2/w;


# direct methods
.method public constructor <init>(Lp2/w;LR1/g;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lp2/v;->g:Lp2/w;

    new-instance v0, Lq2/s;

    const-string v1, "OnRequestInstallCallback"

    invoke-direct {v0, v1}, Lq2/s;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lp2/t;-><init>(Lp2/w;Lq2/s;LR1/g;)V

    iput-object p3, p0, Lp2/v;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lp2/t;->f(Landroid/os/Bundle;)V

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
    iget-object v0, p0, Lp2/t;->d:LR1/g;

    iget-object v1, p0, Lp2/v;->g:Lp2/w;

    iget-object v2, p0, Lp2/v;->f:Ljava/lang/String;

    invoke-static {v1, p1, v2}, Lp2/w;->f(Lp2/w;Landroid/os/Bundle;Ljava/lang/String;)Lp2/a;

    move-result-object p1

    invoke-virtual {v0, p1}, LR1/g;->d(Ljava/lang/Object;)Z

    return-void
.end method
