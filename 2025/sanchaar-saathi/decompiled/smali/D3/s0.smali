.class public LD3/s0;
.super LD3/w0;
.source "SourceFile"

# interfaces
.implements LD3/x;


# instance fields
.field public final g:Z


# direct methods
.method public constructor <init>(LD3/p0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LD3/w0;-><init>(Z)V

    invoke-virtual {p0, p1}, LD3/w0;->n0(LD3/p0;)V

    invoke-virtual {p0}, LD3/s0;->P0()Z

    move-result p1

    iput-boolean p1, p0, LD3/s0;->g:Z

    return-void
.end method


# virtual methods
.method public final P0()Z
    .locals 4

    invoke-virtual {p0}, LD3/w0;->j0()LD3/r;

    move-result-object v0

    instance-of v1, v0, LD3/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, LD3/s;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, LD3/v0;->A()LD3/w0;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, LD3/w0;->g0()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    invoke-virtual {v0}, LD3/w0;->j0()LD3/r;

    move-result-object v0

    instance-of v3, v0, LD3/s;

    if-eqz v3, :cond_3

    check-cast v0, LD3/s;

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, LD3/v0;->A()LD3/w0;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    :goto_2
    return v1
.end method

.method public g0()Z
    .locals 1

    iget-boolean v0, p0, LD3/s0;->g:Z

    return v0
.end method

.method public h0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
