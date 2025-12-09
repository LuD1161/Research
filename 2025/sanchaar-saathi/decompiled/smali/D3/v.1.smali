.class public final LD3/v;
.super LD3/w0;
.source "SourceFile"

# interfaces
.implements LD3/u;


# direct methods
.method public constructor <init>(LD3/p0;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LD3/w0;-><init>(Z)V

    invoke-virtual {p0, p1}, LD3/w0;->n0(LD3/p0;)V

    return-void
.end method


# virtual methods
.method public F(Ll3/e;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LD3/w0;->Q(Ll3/e;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lm3/c;->c()Ljava/lang/Object;

    return-object p1
.end method

.method public h0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r(Ljava/lang/Throwable;)Z
    .locals 4

    new-instance v0, LD3/z;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, LD3/z;-><init>(Ljava/lang/Throwable;ZILv3/g;)V

    invoke-virtual {p0, v0}, LD3/w0;->r0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public t(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, LD3/w0;->r0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
