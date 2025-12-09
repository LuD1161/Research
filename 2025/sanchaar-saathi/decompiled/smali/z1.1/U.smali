.class public final Lz1/U;
.super Lz1/I;
.source "SourceFile"


# instance fields
.field public final synthetic g:Lz1/d;


# direct methods
.method public constructor <init>(Lz1/d;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lz1/U;->g:Lz1/d;

    invoke-direct {p0, p1, p2, p3}, Lz1/I;-><init>(Lz1/d;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final e()Z
    .locals 2

    iget-object v0, p0, Lz1/U;->g:Lz1/d;

    iget-object v0, v0, Lz1/d;->p:Lz1/d$c;

    sget-object v1, Lu1/a;->i:Lu1/a;

    invoke-interface {v0, v1}, Lz1/d$c;->a(Lu1/a;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final f(Lu1/a;)V
    .locals 2

    iget-object v0, p0, Lz1/U;->g:Lz1/d;

    invoke-virtual {v0}, Lz1/d;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lz1/d;->Y()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Lz1/d;->X(I)V

    return-void

    :cond_0
    iget-object v1, v0, Lz1/d;->p:Lz1/d$c;

    invoke-interface {v1, p1}, Lz1/d$c;->a(Lu1/a;)V

    invoke-virtual {v0, p1}, Lz1/d;->K(Lu1/a;)V

    return-void
.end method
