.class public abstract Lp2/t;
.super Lq2/m;
.source "SourceFile"


# instance fields
.field public final c:Lq2/s;

.field public final d:LR1/g;

.field public final synthetic e:Lp2/w;


# direct methods
.method public constructor <init>(Lp2/w;Lq2/s;LR1/g;)V
    .locals 0

    iput-object p1, p0, Lp2/t;->e:Lp2/w;

    invoke-direct {p0}, Lq2/m;-><init>()V

    iput-object p2, p0, Lp2/t;->c:Lq2/s;

    iput-object p3, p0, Lp2/t;->d:LR1/g;

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lp2/t;->e:Lp2/w;

    iget-object p1, p1, Lp2/w;->a:Lq2/D;

    iget-object v0, p0, Lp2/t;->d:LR1/g;

    invoke-virtual {p1, v0}, Lq2/D;->u(LR1/g;)V

    iget-object p1, p0, Lp2/t;->c:Lq2/s;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCompleteUpdate"

    invoke-virtual {p1, v1, v0}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 2

    iget-object p1, p0, Lp2/t;->e:Lp2/w;

    iget-object p1, p1, Lp2/w;->a:Lq2/D;

    iget-object v0, p0, Lp2/t;->d:LR1/g;

    invoke-virtual {p1, v0}, Lq2/D;->u(LR1/g;)V

    iget-object p1, p0, Lp2/t;->c:Lq2/s;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRequestInfo"

    invoke-virtual {p1, v1, v0}, Lq2/s;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
