.class public La3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La3/a$c;
    }
.end annotation


# static fields
.field public static c:Ljava/util/HashMap;


# instance fields
.field public final a:La3/a$c;

.field public final b:LX2/m;


# direct methods
.method public constructor <init>(La3/a$c;LX2/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/a;->a:La3/a$c;

    iput-object p2, p0, La3/a;->b:LX2/m;

    new-instance p1, La3/a$a;

    invoke-direct {p1, p0}, La3/a$a;-><init>(La3/a;)V

    invoke-virtual {p2, p1}, LX2/m;->b(LX2/m$b;)V

    return-void
.end method

.method public static synthetic a(La3/a;Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 0

    invoke-virtual {p0, p1}, La3/a;->d(Ljava/lang/String;)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(La3/a;)La3/a$c;
    .locals 0

    iget-object p0, p0, La3/a;->a:La3/a$c;

    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, La3/a;->b:LX2/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LX2/m;->b(LX2/m$b;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Landroid/view/PointerIcon;
    .locals 2

    sget-object v0, La3/a;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, La3/a$b;

    invoke-direct {v0, p0}, La3/a$b;-><init>(La3/a;)V

    sput-object v0, La3/a;->c:Ljava/util/HashMap;

    :cond_0
    sget-object v0, La3/a;->c:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, La3/a;->a:La3/a$c;

    invoke-interface {v0, p1}, La3/a$c;->b(I)Landroid/view/PointerIcon;

    move-result-object p1

    return-object p1
.end method
