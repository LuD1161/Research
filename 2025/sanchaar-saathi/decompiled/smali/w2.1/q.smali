.class public final Lw2/q;
.super Lw2/j;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lw2/r;


# direct methods
.method public constructor <init>(Lw2/r;)V
    .locals 0

    iput-object p1, p0, Lw2/q;->f:Lw2/r;

    invoke-direct {p0}, Lw2/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lw2/q;->f:Lw2/r;

    iget-object v0, v0, Lw2/r;->a:Lw2/t;

    invoke-static {v0}, Lw2/t;->r(Lw2/t;)V

    iget-object v0, p0, Lw2/q;->f:Lw2/r;

    iget-object v0, v0, Lw2/r;->a:Lw2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw2/t;->m(Lw2/t;Landroid/os/IInterface;)V

    iget-object v0, p0, Lw2/q;->f:Lw2/r;

    iget-object v0, v0, Lw2/r;->a:Lw2/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw2/t;->l(Lw2/t;Z)V

    return-void
.end method
