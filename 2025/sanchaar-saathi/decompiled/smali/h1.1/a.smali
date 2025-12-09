.class public Lh1/a;
.super Lio/flutter/plugin/platform/i;
.source "SourceFile"


# instance fields
.field public final b:LY2/b;


# direct methods
.method public constructor <init>(LY2/b;)V
    .locals 1

    sget-object v0, LY2/o;->a:LY2/o;

    invoke-direct {p0, v0}, Lio/flutter/plugin/platform/i;-><init>(LY2/h;)V

    iput-object p1, p0, Lh1/a;->b:LY2/b;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/Object;)Lio/flutter/plugin/platform/h;
    .locals 2

    new-instance v0, Lh1/e;

    iget-object v1, p0, Lh1/a;->b:LY2/b;

    invoke-direct {v0, p1, v1, p2, p3}, Lh1/e;-><init>(Landroid/content/Context;LY2/b;ILjava/lang/Object;)V

    return-object v0
.end method
