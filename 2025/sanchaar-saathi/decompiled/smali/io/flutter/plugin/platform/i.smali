.class public abstract Lio/flutter/plugin/platform/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LY2/h;


# direct methods
.method public constructor <init>(LY2/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/i;->a:LY2/h;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/h;
.end method

.method public final b()LY2/h;
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/i;->a:LY2/h;

    return-object v0
.end method
