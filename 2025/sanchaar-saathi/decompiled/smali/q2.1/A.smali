.class public final Lq2/A;
.super Lq2/t;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lq2/C;


# direct methods
.method public constructor <init>(Lq2/C;)V
    .locals 0

    iput-object p1, p0, Lq2/A;->f:Lq2/C;

    invoke-direct {p0}, Lq2/t;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lq2/A;->f:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    invoke-static {v0}, Lq2/D;->r(Lq2/D;)V

    iget-object v0, p0, Lq2/A;->f:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq2/D;->m(Lq2/D;Landroid/os/IInterface;)V

    iget-object v0, p0, Lq2/A;->f:Lq2/C;

    iget-object v0, v0, Lq2/C;->a:Lq2/D;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lq2/D;->l(Lq2/D;Z)V

    return-void
.end method
