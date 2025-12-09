.class public abstract LQ0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()LQ0/h;
    .locals 1

    new-instance v0, LQ0/h$a;

    invoke-direct {v0}, LQ0/h$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)LQ0/g;
.end method

.method public final b(Ljava/lang/String;)LQ0/g;
    .locals 1

    invoke-virtual {p0, p1}, LQ0/h;->a(Ljava/lang/String;)LQ0/g;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, LQ0/g;->a(Ljava/lang/String;)LQ0/g;

    move-result-object v0

    :cond_0
    return-object v0
.end method
