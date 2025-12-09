.class public final Lw/c;
.super Lw/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw/a;-><init>()V

    return-void
.end method

.method public static q()Lw/c;
    .locals 1

    new-instance v0, Lw/c;

    invoke-direct {v0}, Lw/c;-><init>()V

    return-object v0
.end method


# virtual methods
.method public o(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lw/a;->o(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
