.class public final synthetic Lio/flutter/plugin/platform/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lio/flutter/plugin/platform/t;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/plugin/platform/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/p;->e:Lio/flutter/plugin/platform/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/p;->e:Lio/flutter/plugin/platform/t;

    invoke-static {v0}, Lio/flutter/plugin/platform/t;->g(Lio/flutter/plugin/platform/t;)V

    return-void
.end method
