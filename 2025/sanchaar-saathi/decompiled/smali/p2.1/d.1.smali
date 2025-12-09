.class public abstract Lp2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp2/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(I)Lp2/d;
    .locals 0

    invoke-static {p0}, Lp2/d;->d(I)Lp2/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lp2/d$a;->a()Lp2/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Lp2/d$a;
    .locals 1

    new-instance v0, Lp2/A;

    invoke-direct {v0}, Lp2/A;-><init>()V

    invoke-virtual {v0, p0}, Lp2/A;->c(I)Lp2/d$a;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lp2/d$a;->b(Z)Lp2/d$a;

    return-object v0
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()I
.end method
