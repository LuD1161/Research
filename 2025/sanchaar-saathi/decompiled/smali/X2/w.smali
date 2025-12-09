.class public LX2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LY2/a;


# direct methods
.method public constructor <init>(LP2/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LY2/a;

    const-string v1, "flutter/system"

    sget-object v2, LY2/e;->a:LY2/e;

    invoke-direct {v0, p1, v1, v2}, LY2/a;-><init>(LY2/b;Ljava/lang/String;LY2/h;)V

    iput-object v0, p0, LX2/w;->a:LY2/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "SystemChannel"

    const-string v1, "Sending memory pressure warning to Flutter."

    invoke-static {v0, v1}, LM2/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "type"

    const-string v2, "memoryPressure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, LX2/w;->a:LY2/a;

    invoke-virtual {v1, v0}, LY2/a;->c(Ljava/lang/Object;)V

    return-void
.end method
