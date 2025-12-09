.class public LX2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LX2/u$a;,
        LX2/u$b;,
        LX2/u$c;
    }
.end annotation


# static fields
.field public static final b:LX2/u$a;


# instance fields
.field public final a:LY2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LX2/u$a;

    invoke-direct {v0}, LX2/u$a;-><init>()V

    sput-object v0, LX2/u;->b:LX2/u$a;

    return-void
.end method

.method public constructor <init>(LP2/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LY2/a;

    const-string v1, "flutter/settings"

    sget-object v2, LY2/e;->a:LY2/e;

    invoke-direct {v0, p1, v1, v2}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    iput-object v0, p0, LX2/u;->a:LY2/a;

    return-void
.end method

.method public static synthetic a()LX2/u$a;
    .locals 1

    sget-object v0, LX2/u;->b:LX2/u$a;

    return-object v0
.end method

.method public static b(I)Landroid/util/DisplayMetrics;
    .locals 1

    sget-object v0, LX2/u;->b:LX2/u$a;

    invoke-virtual {v0, p0}, LX2/u$a;->c(I)LX2/u$a$b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LX2/u$a$b;->a(LX2/u$a$b;)Landroid/util/DisplayMetrics;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public d()LX2/u$b;
    .locals 2

    new-instance v0, LX2/u$b;

    iget-object v1, p0, LX2/u;->a:LY2/a;

    invoke-direct {v0, v1}, LX2/u$b;-><init>(LY2/a;)V

    return-object v0
.end method
