.class public final synthetic Lio/flutter/plugin/platform/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/plugin/platform/t$a;

.field public final synthetic f:Lio/flutter/plugin/platform/C;

.field public final synthetic g:F

.field public final synthetic h:LX2/q$b;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/t$a;Lio/flutter/plugin/platform/C;FLX2/q$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/s;->e:Lio/flutter/plugin/platform/t$a;

    iput-object p2, p0, Lio/flutter/plugin/platform/s;->f:Lio/flutter/plugin/platform/C;

    iput p3, p0, Lio/flutter/plugin/platform/s;->g:F

    iput-object p4, p0, Lio/flutter/plugin/platform/s;->h:LX2/q$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lio/flutter/plugin/platform/s;->e:Lio/flutter/plugin/platform/t$a;

    iget-object v1, p0, Lio/flutter/plugin/platform/s;->f:Lio/flutter/plugin/platform/C;

    iget v2, p0, Lio/flutter/plugin/platform/s;->g:F

    iget-object v3, p0, Lio/flutter/plugin/platform/s;->h:LX2/q$b;

    invoke-static {v0, v1, v2, v3}, Lio/flutter/plugin/platform/t$a;->j(Lio/flutter/plugin/platform/t$a;Lio/flutter/plugin/platform/C;FLX2/q$b;)V

    return-void
.end method
