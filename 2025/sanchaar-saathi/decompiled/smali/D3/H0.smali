.class public abstract LD3/H0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(LD3/p0;)LD3/x;
    .locals 1

    new-instance v0, LD3/G0;

    invoke-direct {v0, p0}, LD3/G0;-><init>(LD3/p0;)V

    return-object v0
.end method

.method public static synthetic b(LD3/p0;ILjava/lang/Object;)LD3/x;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, LD3/H0;->a(LD3/p0;)LD3/x;

    move-result-object p0

    return-object p0
.end method
