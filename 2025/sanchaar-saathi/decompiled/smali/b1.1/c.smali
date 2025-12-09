.class public final Lb1/c;
.super Lb1/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb1/a;-><init>()V

    return-void
.end method

.method public static t()Lb1/c;
    .locals 1

    new-instance v0, Lb1/c;

    invoke-direct {v0}, Lb1/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public p(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lb1/a;->p(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public q(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lb1/a;->q(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public r(Ly2/a;)Z
    .locals 0

    invoke-super {p0, p1}, Lb1/a;->r(Ly2/a;)Z

    move-result p1

    return p1
.end method
