.class public abstract Landroidx/datastore/preferences/protobuf/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/datastore/preferences/protobuf/K;

.field public static final b:Landroidx/datastore/preferences/protobuf/K;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/datastore/preferences/protobuf/M;->c()Landroidx/datastore/preferences/protobuf/K;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/M;->a:Landroidx/datastore/preferences/protobuf/K;

    new-instance v0, Landroidx/datastore/preferences/protobuf/L;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/L;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/M;->b:Landroidx/datastore/preferences/protobuf/K;

    return-void
.end method

.method public static a()Landroidx/datastore/preferences/protobuf/K;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/M;->a:Landroidx/datastore/preferences/protobuf/K;

    return-object v0
.end method

.method public static b()Landroidx/datastore/preferences/protobuf/K;
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/M;->b:Landroidx/datastore/preferences/protobuf/K;

    return-object v0
.end method

.method public static c()Landroidx/datastore/preferences/protobuf/K;
    .locals 2

    sget-boolean v0, Landroidx/datastore/preferences/protobuf/b0;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    const-string v0, "androidx.datastore.preferences.protobuf.MapFieldSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/K;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method
