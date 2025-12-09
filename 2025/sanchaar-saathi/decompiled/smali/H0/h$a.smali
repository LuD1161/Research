.class public final LH0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LH0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lv3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LH0/h$a;-><init>()V

    return-void
.end method

.method public static synthetic b(LH0/h$a;Ljava/lang/Object;Ljava/lang/String;LH0/j;LH0/g;ILjava/lang/Object;)LH0/h;
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    sget-object p3, LH0/c;->a:LH0/c;

    invoke-virtual {p3}, LH0/c;->a()LH0/j;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    sget-object p4, LH0/a;->a:LH0/a;

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, LH0/h$a;->a(Ljava/lang/Object;Ljava/lang/String;LH0/j;LH0/g;)LH0/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;LH0/j;LH0/g;)LH0/h;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p4, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LH0/i;

    invoke-direct {v0, p1, p2, p3, p4}, LH0/i;-><init>(Ljava/lang/Object;Ljava/lang/String;LH0/j;LH0/g;)V

    return-object v0
.end method
