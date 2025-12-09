.class public LE2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY2/j$c;
.implements LT2/a;
.implements LU2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LE2/d$c;,
        LE2/d$b;
    }
.end annotation


# static fields
.field public static k:Ljava/lang/String; = null

.field public static l:Z = false

.field public static m:Z = false

.field public static n:I

.field public static o:Z


# instance fields
.field public c:LU2/c;

.field public d:LE2/c;

.field public e:Landroid/app/Application;

.field public f:LT2/a$b;

.field public g:Landroidx/lifecycle/g;

.field public h:LE2/d$b;

.field public i:Landroid/app/Activity;

.field public j:LY2/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(LE2/d;)LE2/c;
    .locals 0

    iget-object p0, p0, LE2/d;->d:LE2/c;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "dir"

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "media"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v2, "any"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v2, "custom"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "video/*"

    return-object p0

    :pswitch_1
    const-string p0, "image/*,video/*"

    return-object p0

    :pswitch_2
    const-string p0, "image/*"

    return-object p0

    :pswitch_3
    const-string p0, "audio/*"

    return-object p0

    :pswitch_4
    return-object v0

    :pswitch_5
    const-string p0, "*/*"

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069748f -> :sswitch_6
        0x179ec -> :sswitch_5
        0x1848d -> :sswitch_4
        0x58d9bd6 -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x62f6fe4 -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, LE2/d;->c:LU2/c;

    iget-object v1, p0, LE2/d;->d:LE2/c;

    invoke-interface {v0, v1}, LU2/c;->f(LY2/l;)V

    const/4 v0, 0x0

    iput-object v0, p0, LE2/d;->c:LU2/c;

    iget-object v1, p0, LE2/d;->h:LE2/d$b;

    if-eqz v1, :cond_0

    iget-object v2, p0, LE2/d;->g:Landroidx/lifecycle/g;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/g;->c(Landroidx/lifecycle/j;)V

    iget-object v1, p0, LE2/d;->e:Landroid/app/Application;

    iget-object v2, p0, LE2/d;->h:LE2/d$b;

    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    iput-object v0, p0, LE2/d;->g:Landroidx/lifecycle/g;

    iget-object v1, p0, LE2/d;->d:LE2/c;

    invoke-virtual {v1, v0}, LE2/c;->q(LY2/c$b;)V

    iput-object v0, p0, LE2/d;->d:LE2/c;

    iget-object v1, p0, LE2/d;->j:LY2/j;

    invoke-virtual {v1, v0}, LY2/j;->e(LY2/j$c;)V

    iput-object v0, p0, LE2/d;->j:LY2/j;

    iput-object v0, p0, LE2/d;->e:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final c(LY2/b;Landroid/app/Application;Landroid/app/Activity;LU2/c;)V
    .locals 1

    iput-object p3, p0, LE2/d;->i:Landroid/app/Activity;

    iput-object p2, p0, LE2/d;->e:Landroid/app/Application;

    new-instance p2, LE2/c;

    invoke-direct {p2, p3}, LE2/c;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, LE2/d;->d:LE2/c;

    new-instance p2, LY2/j;

    const-string v0, "miguelruivo.flutter.plugins.filepicker"

    invoke-direct {p2, p1, v0}, LY2/j;-><init>(LY2/b;Ljava/lang/String;)V

    iput-object p2, p0, LE2/d;->j:LY2/j;

    invoke-virtual {p2, p0}, LY2/j;->e(LY2/j$c;)V

    new-instance p2, LY2/c;

    const-string v0, "miguelruivo.flutter.plugins.filepickerevent"

    invoke-direct {p2, p1, v0}, LY2/c;-><init>(LY2/b;Ljava/lang/String;)V

    new-instance p1, LE2/d$a;

    invoke-direct {p1, p0}, LE2/d$a;-><init>(LE2/d;)V

    invoke-virtual {p2, p1}, LY2/c;->d(LY2/c$d;)V

    new-instance p1, LE2/d$b;

    invoke-direct {p1, p0, p3}, LE2/d$b;-><init>(LE2/d;Landroid/app/Activity;)V

    iput-object p1, p0, LE2/d;->h:LE2/d$b;

    iget-object p1, p0, LE2/d;->d:LE2/c;

    invoke-interface {p4, p1}, LU2/c;->a(LY2/l;)V

    invoke-static {p4}, LV2/a;->a(LU2/c;)Landroidx/lifecycle/g;

    move-result-object p1

    iput-object p1, p0, LE2/d;->g:Landroidx/lifecycle/g;

    iget-object p2, p0, LE2/d;->h:LE2/d$b;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/j;)V

    return-void
.end method

.method public onAttachedToActivity(LU2/c;)V
    .locals 3

    iput-object p1, p0, LE2/d;->c:LU2/c;

    iget-object p1, p0, LE2/d;->f:LT2/a$b;

    invoke-virtual {p1}, LT2/a$b;->b()LY2/b;

    move-result-object p1

    iget-object v0, p0, LE2/d;->f:LT2/a$b;

    invoke-virtual {v0}, LT2/a$b;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, LE2/d;->c:LU2/c;

    invoke-interface {v1}, LU2/c;->e()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, LE2/d;->c:LU2/c;

    invoke-virtual {p0, p1, v0, v1, v2}, LE2/d;->c(LY2/b;Landroid/app/Application;Landroid/app/Activity;LU2/c;)V

    return-void
.end method

.method public onAttachedToEngine(LT2/a$b;)V
    .locals 0

    iput-object p1, p0, LE2/d;->f:LT2/a$b;

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    invoke-direct {p0}, LE2/d;->d()V

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    invoke-virtual {p0}, LE2/d;->onDetachedFromActivity()V

    return-void
.end method

.method public onDetachedFromEngine(LT2/a$b;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LE2/d;->f:LT2/a$b;

    return-void
.end method

.method public onMethodCall(LY2/i;LY2/j$d;)V
    .locals 10

    iget-object v0, p0, LE2/d;->i:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "no_activity"

    const-string v0, "file picker plugin requires a foreground activity"

    invoke-interface {p2, p1, v0, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v9, LE2/d$c;

    invoke-direct {v9, p2}, LE2/d$c;-><init>(LY2/j$d;)V

    iget-object p2, p1, LY2/i;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/HashMap;

    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v2, "clear"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, LE2/d;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LE2/e;->a(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v9, p1}, LY2/j$d;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    const-string v2, "allowedExtensions"

    if-eqz v0, :cond_2

    const-string v3, "save"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "fileName"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    const-string p1, "fileType"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, LE2/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "initialDirectory"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, LE2/e;->h(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v6

    const-string p1, "bytes"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [B

    iget-object v2, p0, LE2/d;->d:LE2/c;

    move-object v8, v9

    invoke-virtual/range {v2 .. v8}, LE2/c;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[BLY2/j$d;)V

    return-void

    :cond_2
    iget-object v0, p1, LY2/i;->a:Ljava/lang/String;

    invoke-static {v0}, LE2/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LE2/d;->k:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-interface {v9}, LY2/j$d;->c()V

    goto :goto_0

    :cond_3
    const-string v3, "dir"

    if-eq v0, v3, :cond_4

    const-string v0, "allowMultipleSelection"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, LE2/d;->l:Z

    const-string v0, "withData"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, LE2/d;->m:Z

    const-string v0, "allowCompression"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, LE2/d;->o:Z

    const-string v0, "compressionQuality"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, LE2/d;->n:I

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p2}, LE2/e;->h(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object p2

    move-object v6, p2

    goto :goto_1

    :cond_4
    :goto_0
    move-object v6, v1

    :goto_1
    iget-object p1, p1, LY2/i;->a:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string p2, "custom"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v6, :cond_5

    array-length p1, v6

    if-nez p1, :cond_6

    :cond_5
    const-string p1, "FilePicker"

    const-string p2, "Unsupported filter. Make sure that you are only using the extension without the dot, (ie., jpg instead of .jpg). This could also have happened because you are using an unsupported file extension.  If the problem persists, you may want to consider using FileType.any instead."

    invoke-interface {v9, p1, p2, v1}, LY2/j$d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, LE2/d;->d:LE2/c;

    sget-object v3, LE2/d;->k:Ljava/lang/String;

    sget-boolean v4, LE2/d;->l:Z

    sget-boolean v5, LE2/d;->m:Z

    sget-boolean v7, LE2/d;->o:Z

    sget v8, LE2/d;->n:I

    invoke-virtual/range {v2 .. v9}, LE2/c;->t(Ljava/lang/String;ZZ[Ljava/lang/String;ZILY2/j$d;)V

    :goto_2
    return-void
.end method

.method public onReattachedToActivityForConfigChanges(LU2/c;)V
    .locals 0

    invoke-virtual {p0, p1}, LE2/d;->onAttachedToActivity(LU2/c;)V

    return-void
.end method
