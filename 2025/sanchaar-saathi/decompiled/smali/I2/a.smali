.class public final LI2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;
.implements LT2/a;


# instance fields
.field public c:LY2/j;

.field public d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b(Landroid/content/Context;LY2/b;)V
    .locals 1

    iput-object p1, p0, LI2/a;->d:Landroid/content/Context;

    new-instance p1, LY2/j;

    const-string v0, "flutter_udid"

    invoke-direct {p1, p2, v0}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object p1, p0, LI2/a;->c:LY2/j;

    invoke-virtual {p1, p0}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LI2/a;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 2

    const-string v0, "flutterPluginBinding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getApplicationContext(...)"

    invoke-static {v0, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    const-string v1, "getBinaryMessenger(...)"

    invoke-static {p1, v1}, Lv3/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, LI2/a;->b(Landroid/content/Context;LY2/b;)V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, LI2/a;->d:Landroid/content/Context;

    iget-object v0, p0, LI2/a;->c:LY2/j;

    if-nez v0, :cond_0

    const-string v0, "channel"

    invoke-static {v0}, Lv3/l;->n(Ljava/lang/String;)V

    move-object v0, p1

    :cond_0
    invoke-virtual {v0, p1}, LY2/j;->e(LY2/j$c;)V

    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Lv3/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p1, LY2/i;->a:Ljava/lang/String;

    const-string v0, "getUDID"

    invoke-static {p1, v0}, Lv3/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, LI2/a;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "UDID not available."

    const/4 v0, 0x0

    const-string v1, "UNAVAILABLE"

    invoke-interface {p2, v1, p1, v0}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, LY2/j$d;->c()V

    :goto_1
    return-void
.end method
