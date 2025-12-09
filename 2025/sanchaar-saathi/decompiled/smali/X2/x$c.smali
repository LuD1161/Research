.class public LX2/x$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LX2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:LX2/x$g;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(LX2/x$g;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX2/x$c;->a:LX2/x$g;

    iput-boolean p2, p0, LX2/x$c;->b:Z

    iput-boolean p3, p0, LX2/x$c;->c:Z

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)LX2/x$c;
    .locals 5

    new-instance v0, LX2/x$c;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LX2/x$g;->f(Ljava/lang/String;)LX2/x$g;

    move-result-object v1

    const-string v2, "signed"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "decimal"

    invoke-virtual {p0, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, v1, v2, p0}, LX2/x$c;-><init>(LX2/x$g;ZZ)V

    return-object v0
.end method
