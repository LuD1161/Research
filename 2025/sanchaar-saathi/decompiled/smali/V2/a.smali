.class public abstract LV2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(LU2/c;)Landroidx/lifecycle/g;
    .locals 0

    invoke-interface {p0}, LU2/c;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;

    invoke-virtual {p0}, Lio/flutter/embedding/engine/plugins/lifecycle/HiddenLifecycleReference;->getLifecycle()Landroidx/lifecycle/g;

    move-result-object p0

    return-object p0
.end method
